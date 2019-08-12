#!/usr/bin/env python
import ROOT
import datetime
import os
import array
from Utilities.scripts import makeSimpleHtml

ROOT.gROOT.SetBatch(True)
canvas = ROOT.TCanvas("canvas", "canvas")

def getTGraphAsymmErrors(frfile, folder, param, obj):
    tight_hist = frfile.Get("%s/passingTight%s_all%s" % (folder, param, obj))
    loose_hist = frfile.Get("%s/passingLoose%s_all%s" % (folder, param, obj))
    tight_hist.SetTitle("")
    loose_hist.SetTitle("")
    graph = ROOT.TGraphAsymmErrors(tight_hist, loose_hist)
    graph.SetMarkerStyle(6)
    if obj=="E":
        graph.SetMinimum(0)
        graph.SetMaximum(0.16) if "Pt" in param else graph.SetMaximum(0.1)
    else:
        graph.SetMinimum(0)
        graph.SetMaximum(0.4) if "Pt" in param else graph.SetMaximum(0.3)
    return graph

def getTextBox(obj, extra_text=""):
    text_box = ROOT.TPaveText(0.2, 0.88, 0.4+0.02*len(extra_text), 0.81, "blNDC")
    text_box.SetFillColor(0)
    text_box.SetLineColor(ROOT.kBlack)
    text_box.SetTextFont(42)
    text_box.AddText(" %s Fake Rate %s" % ("#mu" if "Mu" in obj else "e", extra_text))
    text_box.SetBorderSize(1)
    ROOT.SetOwnership(text_box, False)
    return text_box

def getLumiTextBox():
    texS = ROOT.TLatex(0.615,0.953,"41.5 fb^{-1} (13 TeV)")
    texS.SetNDC()
    texS.SetTextFont(42)
    texS.SetTextSize(0.040)
    texS.Draw()
    texS1 = ROOT.TLatex(0.15,0.953,"#bf{CMS} #it{Preliminary}")
    texS1.SetNDC()
    texS1.SetTextFont(42)
    texS1.SetTextSize(0.040)
    texS1.Draw()
    return texS,texS1

def invert2DHist(hist):
    new_hist = ROOT.TH2D(hist.GetName(), hist.GetTitle(), 
            4, 0, 2.5,
            8, array.array('d', [5,10,20,30,40,50,60,70,200]))
    ROOT.SetOwnership(new_hist, False)
    for x in range(hist.GetNbinsX()+1):
        for y in range(hist.GetNbinsY()+1):
            value = hist.GetBinContent(x, y)
            new_hist.SetBinContent(y, x, value)
    new_hist.GetXaxis().SetTitle(hist.GetXaxis().GetTitle())
    new_hist.GetYaxis().SetTitle(hist.GetYaxis().GetTitle())
    return new_hist

def makeDataPlots(obj, outdir,chan):
    graph_4e = frfile.Get("AllData/%s" % (obj)) 
    
    graph_4e.SetLineColor(ROOT.kRed)
    #draw_opt = "PA" if "2D" not in param else "colz text"
    draw_opt = "scat"
    graph_4e.SetTitle("")
    ROOT.gStyle.SetOptStat(0)
    #graph_4e = invert2DHist(graph_4e)
    #graph_4e.GetYaxis().SetTitle("#eta")
    labels={"Pt":"p_{T} [GeV]","Eta":"#eta","Phi":"#phi","Z1Mass_Z2Mass":["m_{Z_{1}} [GeV]","m_{Z_{2}} [GeV]"]}
    print labels[obj]
    graph_4e.GetXaxis().SetTitle(labels[obj][0])
    graph_4e.GetYaxis().SetTitle("%s_{l2} %s"% (labels[obj][1]))
    
    graph_4e.Draw(draw_opt)

    #text_box = getTextBox(obj)
    #text_box.Draw()
    texS,texS1=getLumiTextBox()

    legend = ROOT.TLegend(0.2,.80,.40,.70)
    legend.AddEntry(data_ewkcorr_graph, "Data - EWK", "l")
    legend.AddEntry(graph, "DYJets MC", "l")
    legend.Draw()

    canvas.Print("%s/%s.png" % (outdir, obj))
    canvas.Print("%s/%s.pdf" % (outdir, obj))

def makeMCPlots(param, obj, outdir):
    graph = frfile.Get("DYMC/ratio%s_all%s" % (param, obj)) \
        if "2D" in param else getTGraphAsymmErrors(frfile, "DYMC", param, obj)
    graph.SetLineColor(ROOT.kRed)
    draw_opt = "PA" if "2D" not in param else "colz text"
    if "2D" in param:
        graph.GetYaxis().SetTitle("|#eta|")
    else:
        graph.GetYaxis().SetTitle("Passing Tight / Passing Loose")
        xlabel = "p_{T} [GeV]" if "Pt" in param else "|#eta|"
        graph.GetXaxis().SetTitle(xlabel)
    graph.Draw(draw_opt)

    text_box = getTextBox(obj, "(MC)")
    text_box.Draw()

    if not "2D" in param:
        #In order to compare data-ewk with DY
        data_ewkcorr_graph=getTGraphAsymmErrors(frfile, "DataEWKCorrected", param, obj) 
        data_ewkcorr_graph.SetLineColor(ROOT.kBlue)
        data_ewkcorr_graph.SetTitle("")
        data_ewkcorr_graph.Draw("P")
        legend = ROOT.TLegend(0.2,.80,.40,.70)
        legend.AddEntry(data_ewkcorr_graph, "Data - EWK", "l")
        legend.AddEntry(graph, "DYJets MC", "l")
        legend.Draw()

    
    canvas.Print("%s/ratio%s_all%s.png" % (outdir, param, obj))
    canvas.Print("%s/ratio%s_all%s.pdf" % (outdir, param, obj))

frfile = ROOT.TFile("/data/uhussain/ZZTo4l/ZZ2018/VVAnalysisTools/CMSSW_9_4_2/src/Analysis/VVAnalysis/HistFiles/Hists29Nov2018-MuonTest.root")


data_folder_name = datetime.date.today().strftime("%Y%b%d"+"_2DHists") 
data_outdir = "~/www/ZZAnalysisData/PlottingResults/ZZ4l2018/HZZSelectionsTightLeps/" + data_folder_name
#mc_outdir = "~/www/ZZAnalysisData/PlottingResults/ZZ4l2018/HZZSelectionsTightLeps/" + data_folder_name + "-MC/plots"

def mkdir(data_outdir):
    for outdir in [data_outdir]:
        try:
            os.makedirs(os.path.expanduser(outdir))
        except OSError as e:
            print e
            pass
#for channel in ["eeee","eemm","mmee","mmmm"]:
OutputDir=data_outdir+"/plots"
mkdir(OutputDir)
for obj in ["Pt", "Eta","Phi"]:
    makeDataPlots(obj, OutputDir)
        #makeMCPlots(param, obj, mc_outdir)
makeSimpleHtml.writeHTML(os.path.expanduser(OutputDir.replace("/plots", "")), "2D Plots (from data)")
#makeSimpleHtml.writeHTML(os.path.expanduser(mc_outdir.replace("/plots", "")), "2D Plots (from MC)")
