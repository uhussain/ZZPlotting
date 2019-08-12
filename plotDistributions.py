#!/usr/bin/env python
import ROOT
import datetime
import os
import array
from Utilities.scripts import makeSimpleHtml

ROOT.gROOT.SetBatch(True)
canvas = ROOT.TCanvas("canvas", "canvas")

def getHist(frfile, folder, param, obj,chan):
    hist = frfile.Get("%s/%s_%s_%s" % (folder, param, obj,chan))
    #loose_hist = frfile.Get("%s/%s_%s" % (folder, param, obj,chan))
    hist.SetTitle("")
    #if obj=="E":
    #    graph.SetMinimum(0)
    #    graph.SetMaximum(0.16) if "Pt" in param else graph.SetMaximum(0.1)
    #else:
    #    graph.SetMinimum(0)
    #    graph.SetMaximum(0.4) if "Pt" in param else graph.SetMaximum(0.3)
    return hist

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
    texS = ROOT.TLatex(0.615,0.95,"#sqrt{s} = 13 TeV, 41.5 fb^{-1}")
    texS.SetNDC()
    texS.SetTextFont(42)
    texS.SetTextSize(0.040)
    texS.Draw()
    texS1 = ROOT.TLatex(0.15,0.95,"#bf{UW} #it{Internal}")
    texS1.SetNDC()
    texS1.SetTextFont(42)
    texS1.SetTextSize(0.040)
    texS1.Draw()
    return texS,texS1

def makeDataPlots(param, obj, outdir,chan):
    data_ewkcorr_graph = frfile.Get("DataEWKCorrected/%s_%s_%s" % (param, obj,chan)) \
        if "2D" in param else getHist(frfile, "DataEWKCorrected", param, obj,chan)
    data_ewkcorr_graph.SetLineColor(ROOT.kRed)
    #draw_opt = "PA" if "2D" not in param else "colz text"
    draw_opt = "HIST SAME" if "2D" not in param else "scat"

    data_ewkcorr_graph.SetTitle("")
    data_ewkcorr_graph.GetYaxis().SetTitle("Events")
    xlabel = param+" [GeV]" if "Mass" in param else "|#eta|"
    data_ewkcorr_graph.GetXaxis().SetTitle(xlabel)

    #text_box = getTextBox(obj)
    #text_box.Draw()
    texS,texS1=getLumiTextBox()

    if not "2D" in param:
        data_uncorr_graph = getHist(frfile, "AllData", param, obj,chan)
        data_uncorr_graph.SetTitle("")

        data_uncorr_graph.GetYaxis().SetTitle("Events")
        xlabel = param+" [GeV]" if "Mass" in param else "|#eta|"
        data_uncorr_graph.GetXaxis().SetTitle(xlabel)
        data_uncorr_graph.SetLineColor(ROOT.kBlue)
        data_uncorr_graph.Draw("HIST")

        data_ewkcorr_graph.Draw(draw_opt)

        legend = ROOT.TLegend(0.2,.80,.40,.70)
        legend.AddEntry(data_uncorr_graph, "Data", "l")
        legend.AddEntry(data_ewkcorr_graph, "Data - EWK", "l")
        legend.Draw()

    #canvas.Print("%s/%s_%s.png" % (outdir, param, obj))
    canvas.Print("%s/%s_%s.pdf" % (outdir, param, obj))

def makeMCPlots(param, obj, outdir):
    graph = frfile.Get("DYMC/ratio%s_all%s" % (param, obj)) \
        if "2D" in param else getHist(frfile, "DYMC", param, obj)
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
        data_ewkcorr_graph=getHist(frfile, "DataEWKCorrected", param, obj) 
        data_ewkcorr_graph.SetLineColor(ROOT.kBlue)
        data_ewkcorr_graph.SetTitle("")
        data_ewkcorr_graph.Draw("P")
        legend = ROOT.TLegend(0.2,.80,.40,.70)
        legend.AddEntry(data_ewkcorr_graph, "Data - EWK", "l")
        legend.AddEntry(graph, "DYJets MC", "l")
        legend.Draw()

    
    canvas.Print("%s/ratio%s_all%s.png" % (outdir, param, obj))
    canvas.Print("%s/ratio%s_all%s.pdf" % (outdir, param, obj))

frfile = ROOT.TFile("/data/uhussain/ZZTo4l/ZZ2018/VVAnalysisTools/CMSSW_9_4_2/src/Analysis/VVAnalysis/HistFiles/Hists17Dec2018-HZZ.root")


data_folder_name = datetime.date.today().strftime("%Y%b%d"+"_1DHists") 
data_outdir = "~/www/ZZAnalysisData/PlottingResults/ZZ4l2018/HZZSelectionsTightLeps/" + data_folder_name
#mc_outdir = "~/www/ZZAnalysisData/PlottingResults/ZZ4l2018/HZZSelectionsTightLeps/" + data_folder_name + "-MC/plots"

def mkdir(data_outdir):
    for outdir in [data_outdir]:
        try:
            os.makedirs(os.path.expanduser(outdir))
        except OSError as e:
            print e
            pass
for channel in ["eeee","eemm","mmee","mmmm"]:
    OutputDir=data_outdir+"/"+channel+"/plots"
    mkdir(OutputDir)
    for param in ["Z1Mass", "Z2Mass","Mass"]:
#for param in ["1DPt", "1DEta"]:
        for obj in ["Fakes", "PPPF","PPFF"]:
            makeDataPlots(param, obj, OutputDir,channel)
        #makeMCPlots(param, obj, mc_outdir)
makeSimpleHtml.writeHTML(os.path.expanduser(OutputDir.replace("/plots", "")), "1D Plots (from data)")
#makeSimpleHtml.writeHTML(os.path.expanduser(mc_outdir.replace("/plots", "")), "2D Plots (from MC)")
