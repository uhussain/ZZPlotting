import ROOT
import math
import UserInput
import config_object
import logging
import os
import glob
import array
class ConfigHistFactory(object):
    def __init__(self, dataset_manager_path, dataset_name, object_restrict=""):
        self.manager_path = dataset_manager_path
        self.dataset_name = dataset_name
        self.info = self.readAllInSet("FileInfo", self.dataset_name)
        self.config = config_object.ConfigObject(self.info)
        self.mc_info = UserInput.readAllJson('/'.join([self.manager_path, "FileInfo", "montecarlo/*.json"]))
        self.data_info = UserInput.readAllJson('/'.join([self.manager_path, "FileInfo", "data/*.json"]))
        self.styles = UserInput.readJson('/'.join([self.manager_path, 
            "Styles", "styles.json"]))
        base_name = self.dataset_name.split("/")[0]
        print "base_name: ", base_name
        self.plot_groups = self.readAllInSet("PlotGroups", base_name)
        object_file = '/'.join([self.manager_path,  "PlotObjects", 
            ("_".join([self.dataset_name, object_restrict])
                if object_restrict != "" else self.dataset_name) + ".json"])
        self.aliases = UserInput.readJson('/'.join([self.manager_path, 
            "Aliases", "%s.json" % base_name]))
        # Objects can be defined by the default dataset-wide file, 
        # or by specific selection files
        if not os.path.isfile(object_file): object_file = object_file.replace(
                 self.dataset_name, base_name)
        self.plot_objects = UserInput.readJson(object_file)
    def readAllInSet(self, object_type, base_name):
        info = UserInput.readJson('/'.join([self.manager_path, 
                object_type, "%s.json" % base_name]))
        for file_name in glob.glob('/'.join([self.manager_path, 
                object_type, "%s_*.json" % base_name])):
            info.update(UserInput.readJson(file_name))
        return info
    def getHist2DWeightDrawExpr(self, object_name, dataset_name, channel, bins):
        draw_expr = self.getHistDrawExpr(object_name, dataset_name, channel)
        draw_expr = draw_expr.replace("(", "(" + ",".join([str(i) for i in bins]+[""]))
        draw_expr = draw_expr.replace(object_name, object_name + ":Iteration$", 1)
        return draw_expr
    def getHistDrawExpr(self, object_name, dataset_name, channel):
        hist_name = '_'.join([x for x in [dataset_name, channel, object_name] 
            if x != ""])
        object_entry = object_name if object_name in self.plot_objects else object_name.split("_")[0]
        hist_info = self.plot_objects[object_entry]['Initialize']
        draw_expr = '>>'.join([object_name, hist_name])
        draw_expr += "(%i,%f,%f)" % (hist_info['nbins'], hist_info['xmin'], hist_info['xmax'])
        return draw_expr
    def get2DHistDrawExpr(self, xobject_name, yobject_name, dataset_name, channel):
        hist_name = '_'.join([x for x in [dataset_name, channel, xobject_name, yobject_name] 
            if x != ""])
        xobject_name = xobject_name if xobject_name in self.plot_objects else xobject_name.split("_")[0]
        yobject_name = yobject_name if yobject_name in self.plot_objects else yobject_name.split("_")[0]
        xhist_info = self.plot_objects[xobject_name]['Initialize']
        yhist_info = self.plot_objects[yobject_name]['Initialize']
        draw_expr = '>>'.join([xobject_name+":"+yobject_name, hist_name])
        draw_expr += "(%s)" % ",".join([str(x) for x in [xhist_info['nbins'], xhist_info['xmin'], xhist_info['xmax'],
            yhist_info['nbins'], yhist_info['xmin'], yhist_info['xmax']]])
        return draw_expr
    def getHistBinInfo(self, object_name):
        bin_info = {}
        object_name = object_name if object_name in self.plot_objects else object_name.split("_")[0]
        hist_info = self.plot_objects[object_name]['Initialize']
        #print "hist_info: ", hist_info
        if "varbins" in hist_info:
            bin_info.update({"nbins":len(hist_info["varbins"])-1})
            bin_info.update({"binning":array.array('d', hist_info["varbins"])})
        else:
            for key in ['nbins', 'xmin', 'xmax']:
                bin_info.update({key : hist_info[key]})
        print "bin_info:", bin_info
        return bin_info
    def setProofAliases(self, channel):
        proof = ROOT.gProof
        proof.ClearInput()
        alias_list = []
        if channel != "":
            for name, value in self.aliases['State'][channel].iteritems():
                alias_list.append(name)
                proof.AddInput(ROOT.TNamed("alias:%s" % name, value))
        for name, value in self.aliases['Event'].iteritems():
            alias_list.append(name)
            proof.AddInput(ROOT.TNamed("alias:%s" % name, value))
        proof.AddInput(ROOT.TNamed("PROOF_ListOfAliases", ','.join(alias_list)))
    def hackInAliases(self, expr, channel=""):
        if channel != "":
            for name, value in self.aliases['State'][channel].iteritems():
                expr = expr.replace(name, value)
        for name, value in self.aliases['Event'].iteritems():
            expr = expr.replace(name, value)
        return expr
    def setHistAttributes(self, hist, object_name, plot_group):
        config = self.config
        info = self.info
        # If not a valid plot group, try treating it as file entry
        plot_group = self.plot_groups[info[plot_group]['plot_group']] \
                if plot_group not in self.plot_groups.keys() else self.plot_groups[plot_group]
        hist.SetTitle(plot_group['Name'])
        if 'Scale' in plot_group.keys():
            logging.warning("Scaling plot_group %s by %0.2f" % (plot_group['Name'], plot_group['Scale']))
            hist.Scale(plot_group['Scale'])
        config.setAttributes(hist, self.styles[plot_group['Style']])
        #object_name = object_name if object_name in self.plot_objects else object_name.split("_")[0]
        config.setAttributes(hist, self.plot_objects[object_name]['Attributes'])
    def addErrorToHist(self, hist, plot_group_name):
        # If not a valid plot group, try treating it as file entry
        plot_group = self.plot_groups[self.info[plot_group_name]['plot_group']] \
                if plot_group_name not in self.plot_groups.keys() else self.plot_groups[plot_group_name]
        if "add_perc_error" in plot_group.keys():
            for i in range(1, hist.GetNbinsX()+1):
                scale_fac = hist.GetBinContent(i)
                if scale_fac < 0:
                    scale_fac = 0
                add_error = math.sqrt(scale_fac*plot_group["add_perc_error"])
                error = math.sqrt(hist.GetBinError(i)**2 + add_error**2)
                hist.SetBinError(i, error)
    def getPlotGroupWeight(self, plot_group):
        if plot_group in self.plot_groups.keys():
            if "weight" in self.plot_groups[plot_group].keys():
                return self.plot_groups[plot_group]["weight"]
        return 1
    def getPlotGroupMembers(self, plot_group):
        if plot_group in self.plot_groups.keys():
            return self.plot_groups[plot_group]["Members"]
        else:
            raise ValueError("%s is not a valid PlotGroup" % plot_group)
    def getFileInfo(self):
        return self.info
    def getDataInfo(self):
        return self.data_info
    def getMonteCarloInfo(self):
        return self.mc_info
    def getListOfPlotObjects(self):
        return self.plot_objects.keys()
def main():
    test = ConfigHistFactory("/afs/cern.ch/user/u/uhussain/work/ZZ4lRun2DatasetManager",
        "ZZAnalysis", "Zselection")
    draw_expr = test.getHistDrawExpr("l1Pt", "zz4l-powheg", "eeee")
    hist_name = draw_expr.split(">>")[1].split("(")[0]

if __name__ == "__main__":
    main()
