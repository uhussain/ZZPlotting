#filename="Hists31Mar2020-ZZFullRun2_newSherpa.root"
filename="Hists10Nov2020-ZZFullRun2_newSherpa.root"
#filename="Hists31Mar2020-ZZFullRun2.root"
selection="ZZSelectionsTightLeps"
#dir="ANPlots/FullRun2/FinalPaperPlots_22Apr2020"
variable="Mass"
for var in $variable
do

  if [ $var = "Mass" ];
  then
    echo ${var}
    echo "All Channels"
     #just for thesis 
    #./makeHistStack.py -s ZZ4l2018/ZZSelectionsTightLeps -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --logy --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/Hists31Mar2020-ZZFullRun2_newSherpa.root --no_ratio --signal_files f4_fg_0p0019_fz_0p0015,f5_fg_0p0019_fz_0p0015 --stack_signal --exclude_from_sigstack qqZZ_powheg,ggZZ --folder_name ANPlots/FullRun2/aTGC_f4_f5_thesis -b Mass --scaleymin 2000 --scaleymax 2 --scalelegx 1.8 --scalelegy 0.9 --rebin 100.0,200.0,300.0,400.0,500.0,600.0,800.0,1000.0,1300.0,1600.0
    #./makeHistStack.py -s ZZ4l2018/ZZSelectionsTightLeps -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --logy --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/Hists31Mar2020-ZZFullRun2_newSherpa.root --no_ratio --signal_files f4_fg-0_fz-0p0015,f5_fg_0_fz_0p0015 --stack_signal --exclude_from_sigstack qqZZ_powheg,ggZZ --folder_name ANPlots/FullRun2/aTGC_f4_f5_thesis -b Mass --scaleymin 2000 --scaleymax 2 --scalelegx 1.8 --scalelegy 0.9 --rebin 100.0,200.0,300.0,400.0,500.0,600.0,800.0,1000.0,1300.0,1600.0
    ./makeHistStack.py -s ZZ4l2018/ZZSelectionsTightLeps -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --logy --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/Hists10Nov2020-ZZFullRun2_newSherpa.root --no_ratio --signal_files f4_fg-0_fz-0p0015 --stack_signal --exclude_from_sigstack qqZZ_powheg,GGZZ --folder_name ANPlots/FullRun2/aTGC_FullRun2PostApproval_14Nov2020 -b Mass --scaleymin 8 --scaleymax 1000 --scalelegx 1.8 --scalelegy 0.9 --rebin 100.0,200.0,300.0,400.0,500.0,600.0,800.0,1000.0,1300.0,1600.0
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir} -b ${var} --scaleymax 1.1 --scalelegx 1.3 --rebin 100.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,800.0,1000.0,1200.0 
    # 
    #echo "Plotting 4e channel"
    #
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --scaleymax 1.1 --scalelegx 1.4 --rebin 100.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,800.0,1000.0,1200.0 
    # 
    #echo "Plotting 4mu channel"
    #
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --scaleymax 1.1 --scalelegx 1.4 --rebin 100.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,800.0,1000.0,1200.0 
    # 
    #echo "Plotting eemm channel"
    #
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --scaleymax 1.1 --scalelegx 1.4 --rebin 100.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,800.0,1000.0,1200.0     
    #echo "Plotting mmee channel"
    #
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --scaleymax 1.1 --scalelegx 1.4 --rebin 100.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,800.0,1000.0,1200.0 
    #
    #echo "Plotting 2e2m  channel"
    #
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --scaleymax 1.1 --scalelegx 1.4 --rebin 100.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,800.0,1000.0,1200.0 
    
  fi
  #if [ $var = "Mass" ];
  #then
  #  echo ${var}
  #  echo "All Channels"
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --logy --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --signal_files f4_fg-0_fz-0p0015 --stack_signal --exclude_from_sigstack qqZZ_powheg,ggZZ --folder_name ${dir} -b ${var} --scaleymin 100 --scaleymax 2 --scalelegx 1.8 --scalelegy 0.9 --rebin 100.0,200.0,250.,300.0,350.,400.0,500.0,600.0,800.0,1000.0
     
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --logy --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --signal_files f4_fg-0_fz-0p0015 --stack_signal --exclude_from_sigstack qqZZ_powheg,ggZZ --folder_name ${dir} -b ${var} --scaleymin 2000 --scaleymax 2 --scalelegx 1.8 --scalelegy 0.9 --rebin 100.0,200.0,250.,300.0,350.,400.0,500.0,600.0,800.0,1000.0
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --logy --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --no_ratio --signal_files f4_fg-0_fz-0p0015,sherpa_scaled --stack_signal --exclude_from_sigstack qqZZ_powheg,ggZZ --folder_name ${dir} -b ${var} --scaleymin 2000 --scaleymax 2 --scalelegx 1.8 --scalelegy 0.9 --rebin 100.0,200.0,300.0,400.0,500.0,600.0,800.0,1000.0,1300.0,1600.0
    #echo "Plotting 4e channel"
    #
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --logy --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --signal_files f4_fg-0p0019_fz-0p0015,f5_fg-0p0019_fz-0p0015 --folder_name ${dir}/eeee -b ${var} -c eeee --scaleymax 1.1 --scalelegx 1.4 --rebin 100.0,200.0,300.0,400.0,500.0,600.0,800.0,1000.0,1300.0,2000.0,2500.0 
    # 
    #echo "Plotting 4mu channel"
    #
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --logy --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --signal_files f4_fg-0p0019_fz-0p0015,f5_fg-0p0019_fz-0p0015 --folder_name ${dir}/mmmm -b ${var} -c mmmm --scaleymax 1.1 --scalelegx 1.4 --rebin 100.0,200.0,300.0,400.0,500.0,600.0,800.0,1000.0,1300.0,2000.0,2500.0
    # 
    #echo "Plotting eemm channel"
    #
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --logy --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --signal_files f4_fg-0p0019_fz-0p0015,f5_fg-0p0019_fz-0p0015 --folder_name ${dir}/eemm -b ${var} -c eemm --scaleymax 1.1 --scalelegx 1.4 --rebin 100.0,200.0,300.0,400.0,500.0,600.0,800.0,1000.0,1300.0,2000.0,2500.0   
    #echo "Plotting mmee channel"
    #
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --logy --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --signal_files f4_fg-0p0019_fz-0p0015,f5_fg-0p0019_fz-0p0015 --folder_name ${dir}/mmee -b ${var} -c mmee --scaleymax 1.1 --scalelegx 1.4 --rebin 100.0,200.0,300.0,400.0,500.0,600.0,800.0,1000.0,1300.0,2000.0,2500.0 
    #
    #echo "Plotting 2e2m  channel"
    #
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --logy --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --signal_files f4_fg-0p0019_fz-0p0015,f5_fg-0p0019_fz-0p0015 --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --scaleymax 1.1 --scalelegx 1.4 --rebin 100.0,200.0,300.0,400.0,500.0,600.0,800.0,1000.0,1300.0,2000.0,2500.0
    
  #fi
  
  if [ $var = "Z1Mass" ];
  then
    echo ${var}
    echo "All Channels"
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir} -b ${var} --scaleymax 1.1 --scalelegx 1.4 --rebin 60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0,76.0,77.0,78.0,79.0,80.0,81.0,82.0,83.0,84.0,85.0,86.0,87.0,88.0,89.0,90.0,91.0,92.0,93.0,94.0,95.0,96.0,97.0,98.0,99.0,100.0,101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,111.0,112.0,113.0,114.0,115.0,116.0,117.0,118.0,119.0,120.0 

    echo "Plotting 4e channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --scaleymax 1.1 --scalelegx 1.4 --rebin 60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0,76.0,77.0,78.0,79.0,80.0,81.0,82.0,83.0,84.0,85.0,86.0,87.0,88.0,89.0,90.0,91.0,92.0,93.0,94.0,95.0,96.0,97.0,98.0,99.0,100.0,101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,111.0,112.0,113.0,114.0,115.0,116.0,117.0,118.0,119.0,120.0
    
    echo "Plotting 4mu channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --scaleymax 1.1 --scalelegx 1.4 --rebin 60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0,76.0,77.0,78.0,79.0,80.0,81.0,82.0,83.0,84.0,85.0,86.0,87.0,88.0,89.0,90.0,91.0,92.0,93.0,94.0,95.0,96.0,97.0,98.0,99.0,100.0,101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,111.0,112.0,113.0,114.0,115.0,116.0,117.0,118.0,119.0,120.0 
    
    echo "Plotting eemm channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --scaleymax 1.1 --scalelegx 1.4 --rebin 60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0,76.0,77.0,78.0,79.0,80.0,81.0,82.0,83.0,84.0,85.0,86.0,87.0,88.0,89.0,90.0,91.0,92.0,93.0,94.0,95.0,96.0,97.0,98.0,99.0,100.0,101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,111.0,112.0,113.0,114.0,115.0,116.0,117.0,118.0,119.0,120.0 
    
    echo "Plotting mmee channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --scaleymax 1.1 --scalelegx 1.4 --rebin 60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0,76.0,77.0,78.0,79.0,80.0,81.0,82.0,83.0,84.0,85.0,86.0,87.0,88.0,89.0,90.0,91.0,92.0,93.0,94.0,95.0,96.0,97.0,98.0,99.0,100.0,101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,111.0,112.0,113.0,114.0,115.0,116.0,117.0,118.0,119.0,120.0
  
    echo "Plotting 2e2m channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --scaleymax 1.1 --scalelegx 1.4 --rebin 60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0,76.0,77.0,78.0,79.0,80.0,81.0,82.0,83.0,84.0,85.0,86.0,87.0,88.0,89.0,90.0,91.0,92.0,93.0,94.0,95.0,96.0,97.0,98.0,99.0,100.0,101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,111.0,112.0,113.0,114.0,115.0,116.0,117.0,118.0,119.0,120.0
  
  fi
  if [ $var = "ZMass" ];
  then
    echo ${var}
    echo "All Channels"
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir} -b ${var} --scaleymax 1.1 --scalelegx 1.4 --rebin 60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0,76.0,77.0,78.0,79.0,80.0,81.0,82.0,83.0,84.0,85.0,86.0,87.0,88.0,89.0,90.0,91.0,92.0,93.0,94.0,95.0,96.0,97.0,98.0,99.0,100.0,101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,111.0,112.0,113.0,114.0,115.0,116.0,117.0,118.0,119.0,120.0 
     
    echo "Plotting 4e channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left  --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --scaleymax 1.1 --scalelegx 1.4 --rebin 60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0,76.0,77.0,78.0,79.0,80.0,81.0,82.0,83.0,84.0,85.0,86.0,87.0,88.0,89.0,90.0,91.0,92.0,93.0,94.0,95.0,96.0,97.0,98.0,99.0,100.0,101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,111.0,112.0,113.0,114.0,115.0,116.0,117.0,118.0,119.0,120.0
    
    echo "Plotting 4mu channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --scaleymax 1.1 --scalelegx 1.4 --rebin 60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0,76.0,77.0,78.0,79.0,80.0,81.0,82.0,83.0,84.0,85.0,86.0,87.0,88.0,89.0,90.0,91.0,92.0,93.0,94.0,95.0,96.0,97.0,98.0,99.0,100.0,101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,111.0,112.0,113.0,114.0,115.0,116.0,117.0,118.0,119.0,120.0
    
    echo "Plotting eemm channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --scaleymax 1.1 --scalelegx 1.4 --rebin 60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0,76.0,77.0,78.0,79.0,80.0,81.0,82.0,83.0,84.0,85.0,86.0,87.0,88.0,89.0,90.0,91.0,92.0,93.0,94.0,95.0,96.0,97.0,98.0,99.0,100.0,101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,111.0,112.0,113.0,114.0,115.0,116.0,117.0,118.0,119.0,120.0
    
    echo "Plotting mmee channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --scaleymax 1.1 --scalelegx 1.4 --rebin 60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0,76.0,77.0,78.0,79.0,80.0,81.0,82.0,83.0,84.0,85.0,86.0,87.0,88.0,89.0,90.0,91.0,92.0,93.0,94.0,95.0,96.0,97.0,98.0,99.0,100.0,101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,111.0,112.0,113.0,114.0,115.0,116.0,117.0,118.0,119.0,120.0
  
    echo "Plotting 2e2m channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --scaleymax 1.1 --scalelegx 1.4 --rebin 60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0,76.0,77.0,78.0,79.0,80.0,81.0,82.0,83.0,84.0,85.0,86.0,87.0,88.0,89.0,90.0,91.0,92.0,93.0,94.0,95.0,96.0,97.0,98.0,99.0,100.0,101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,111.0,112.0,113.0,114.0,115.0,116.0,117.0,118.0,119.0,120.0
  fi
  
  if [ $var = "Z2Mass" ];
  then
    echo ${var}
    echo "All Channels"
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir} -b ${var} --scaleymax 1.1 --scalelegx 1.4 --rebin 60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0,76.0,77.0,78.0,79.0,80.0,81.0,82.0,83.0,84.0,85.0,86.0,87.0,88.0,89.0,90.0,91.0,92.0,93.0,94.0,95.0,96.0,97.0,98.0,99.0,100.0,101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,111.0,112.0,113.0,114.0,115.0,116.0,117.0,118.0,119.0,120.0 
    
    echo "Plotting 4e channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --scaleymax 1.1 --scalelegx 1.4 --rebin 60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0,76.0,77.0,78.0,79.0,80.0,81.0,82.0,83.0,84.0,85.0,86.0,87.0,88.0,89.0,90.0,91.0,92.0,93.0,94.0,95.0,96.0,97.0,98.0,99.0,100.0,101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,111.0,112.0,113.0,114.0,115.0,116.0,117.0,118.0,119.0,120.0 
    
    echo "Plotting 4mu channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --scaleymax 1.1 --scalelegx 1.4 --rebin 60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0,76.0,77.0,78.0,79.0,80.0,81.0,82.0,83.0,84.0,85.0,86.0,87.0,88.0,89.0,90.0,91.0,92.0,93.0,94.0,95.0,96.0,97.0,98.0,99.0,100.0,101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,111.0,112.0,113.0,114.0,115.0,116.0,117.0,118.0,119.0,120.0 
    echo "Plotting eemm channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --scaleymax 1.1 --scalelegx 1.4 --rebin 60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0,76.0,77.0,78.0,79.0,80.0,81.0,82.0,83.0,84.0,85.0,86.0,87.0,88.0,89.0,90.0,91.0,92.0,93.0,94.0,95.0,96.0,97.0,98.0,99.0,100.0,101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,111.0,112.0,113.0,114.0,115.0,116.0,117.0,118.0,119.0,120.0 
    echo "Plotting mmee channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --scaleymax 1.1 --scalelegx 1.4 --rebin 60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0,76.0,77.0,78.0,79.0,80.0,81.0,82.0,83.0,84.0,85.0,86.0,87.0,88.0,89.0,90.0,91.0,92.0,93.0,94.0,95.0,96.0,97.0,98.0,99.0,100.0,101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,111.0,112.0,113.0,114.0,115.0,116.0,117.0,118.0,119.0,120.0 
  
    echo "Plotting 2e2m channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --scaleymax 1.1 --scalelegx 1.4 --rebin 60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0,76.0,77.0,78.0,79.0,80.0,81.0,82.0,83.0,84.0,85.0,86.0,87.0,88.0,89.0,90.0,91.0,92.0,93.0,94.0,95.0,96.0,97.0,98.0,99.0,100.0,101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,111.0,112.0,113.0,114.0,115.0,116.0,117.0,118.0,119.0,120.0
  
  fi
  if [ $var = "nJets" ];
  then
    echo ${var}
    echo "All Channels"
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir} -b ${var} --scaleymax 1.1 --scalelegx 1.4 
     
    echo "Plotting 4e channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --scaleymax 1.1 --scalelegx 1.4
    
    echo "Plotting 4mu channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --scaleymax 1.1 --scalelegx 1.4 
    
    echo "Plotting eemm channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --scaleymax 1.1 --scalelegx 1.4 
    
    echo "Plotting mmee channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --scaleymax 1.1 --scalelegx 1.4
  
    echo "Plotting 2e2m channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --scaleymax 1.1 --scalelegx 1.4
  
  fi
  if [ $var = "dPhiZ1Z2" ];
  then
    echo ${var}
    echo "All Channels"
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir} -b ${var} --scaleymax 1.1 --scalelegx 1.4 
     
    echo "Plotting 4e channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --scaleymax 1.1 --scalelegx 1.4
    
    echo "Plotting 4mu channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --scaleymax 1.1 --scalelegx 1.4 
    
    echo "Plotting eemm channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --scaleymax 1.1 --scalelegx 1.4 
    
    echo "Plotting mmee channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --scaleymax 1.1 --scalelegx 1.4
  
    echo "Plotting 2e2m channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --scaleymax 1.1 --scalelegx 1.4
  
  fi
  if [ $var = "mjj" ];
  then
    echo ${var}
    echo "All Channels"
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --logy --extra_text "mjj > 100 GeV" --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir} -b ${var} --scaleymax 90 --scaleymin 1.0 --scalelegx 1.4 --rebin 100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0,900.0,1000.0,1100.0,1200.0,1300.0,1400.0,1500.0,1600.0
     
    echo "Plotting 4e channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --logy --extra_text "mjj > 100 GeV" --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --scaleymax 90 --scaleymin 1.0 --scalelegx 1.4 --rebin 100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0,900.0,1000.0,1100.0,1200.0,1300.0,1400.0,1500.0,1600.0 
     
    echo "Plotting 4mu channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --logy --extra_text "mjj > 100 GeV" --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --scaleymax 90 --scaleymin 1.0 --scalelegx 1.4 --rebin 100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0,900.0,1000.0,1100.0,1200.0,1300.0,1400.0,1500.0,1600.0 
     
    echo "Plotting eemm channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --logy --extra_text "mjj > 100 GeV" --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --scaleymax 90 --scaleymin 1.0 --scalelegx 1.4 --rebin 100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0,900.0,1000.0,1100.0,1200.0,1300.0,1400.0,1500.0,1600.0  
    echo "Plotting mmee channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --logy --extra_text "mjj > 100 GeV" --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --scaleymax 90 --scaleymin 1.0 --scalelegx 1.4 --rebin 100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0,900.0,1000.0,1100.0,1200.0,1300.0,1400.0,1500.0,1600.0 
    
    echo "Plotting 2e2m  channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --logy --extra_text "mjj > 100 GeV" --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --scaleymax 90 --scaleymin 1.0 --scalelegx 1.4 --rebin 100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0,900.0,1000.0,1100.0,1200.0,1300.0,1400.0,1500.0,1600.0 
    
  fi
  if [ $var = "dEtajj" ];
  then
    echo ${var}
    echo "All Channels"
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --extra_text "mjj > 100 GeV" --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir} -b ${var} --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,0.5,1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,5.5,6.0,6.5,7.0 
     
    echo "Plotting 4e channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --extra_text "mjj > 100 GeV" --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,0.5,1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,5.5,6.0,6.5,7.0
    
    echo "Plotting 4mu channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --extra_text "mjj > 100 GeV" --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,0.5,1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,5.5,6.0,6.5,7.0
    
    echo "Plotting eemm channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --extra_text "mjj > 100 GeV" --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,0.5,1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,5.5,6.0,6.5,7.0
    
    echo "Plotting mmee channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --extra_text "mjj > 100 GeV" --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,0.5,1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,5.5,6.0,6.5,7.0
  
    echo "Plotting 2e2m channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --extra_text "mjj > 100 GeV" --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,0.5,1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,5.5,6.0,6.5,7.0
  
  fi
  if [ $var = "jetPt[0]" ];
  then
    echo ${var}
    echo "All Channels"
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir} -b ${var} --scaleymax 1.1 --scalelegx 1.4 
     
    echo "Plotting 4e channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex  --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --scaleymax 1.1 --scalelegx 1.4
    
    echo "Plotting 4mu channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --scaleymax 1.1 --scalelegx 1.4 
    
    echo "Plotting eemm channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --scaleymax 1.1 --scalelegx 1.4 
    
    echo "Plotting mmee channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --scaleymax 1.1 --scalelegx 1.4
  
    echo "Plotting 2e2m channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --scaleymax 1.1 --scalelegx 1.4
  
  fi
  if [ $var = "jetPt[1]" ];
  then
    echo ${var}
    echo "All Channels"
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir} -b ${var} --scaleymax 1.1 --scalelegx 1.4 
     
    echo "Plotting 4e channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex  --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --scaleymax 1.1 --scalelegx 1.4
    
    echo "Plotting 4mu channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --scaleymax 1.1 --scalelegx 1.4 
    
    echo "Plotting eemm channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --scaleymax 1.1 --scalelegx 1.4 
    
    echo "Plotting mmee channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --scaleymax 1.1 --scalelegx 1.4
  
    echo "Plotting 2e2m channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --scaleymax 1.1 --scalelegx 1.4
  
  fi
  if [ $var = "jetEta[0]" ];
  then
    echo ${var}
    echo "All Channels"
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir} -b ${var} --scaleymax 1.1 --scalelegx 1.4 
     
    echo "Plotting 4e channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex  --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --scaleymax 1.1 --scalelegx 1.4
    
    echo "Plotting 4mu channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --scaleymax 1.1 --scalelegx 1.4 
    
    echo "Plotting eemm channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --scaleymax 1.1 --scalelegx 1.4 
    
    echo "Plotting mmee channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --scaleymax 1.1 --scalelegx 1.4
  
    echo "Plotting 2e2m channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --scaleymax 1.1 --scalelegx 1.4
  
  fi
  if [ $var = "jetEta[1]" ];
  then
    echo ${var}
    echo "All Channels"
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir} -b ${var} --scaleymax 1.1 --scalelegx 1.4 
     
    echo "Plotting 4e channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex  --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --scaleymax 1.1 --scalelegx 1.4
    
    echo "Plotting 4mu channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --scaleymax 1.1 --scalelegx 1.4 
    
    echo "Plotting eemm channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --scaleymax 1.1 --scalelegx 1.4 
    
    echo "Plotting mmee channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --scaleymax 1.1 --scalelegx 1.4
  
    echo "Plotting 2e2m channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018ZZjj -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --scaleymax 1.1 --scalelegx 1.4
  
  fi 
  if [ $var = "ZZPt" ];
  then
    echo ${var}
    echo "All Channels"
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir} -b ${var} --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,50.0,100.0,150.0,200.0,250.0,300.0,350.0,400.0 
    
    echo "Plotting 4e channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,50.0,100.0,150.0,200.0,250.0,300.0,350.0,400.0  
    
    echo "Plotting 4mu channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,50.0,100.0,150.0,200.0,250.0,300.0,350.0,400.0  
    echo "Plotting eemm channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,50.0,100.0,150.0,200.0,250.0,300.0,350.0,400.0  
    echo "Plotting mmee channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,50.0,100.0,150.0,200.0,250.0,300.0,350.0,400.0  
  
    echo "Plotting 2e2m channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,50.0,100.0,150.0,200.0,250.0,300.0,350.0,400.0 
  
  fi

  if [ $var = "ZPt" ];
  then
    echo ${var}
    echo "All Channels"
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir} -b ${var} --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0,275.0,300.0 
    
    echo "Plotting 4e channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0,275.0,300.0
    
    echo "Plotting 4mu channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0,275.0,300.0
    echo "Plotting eemm channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0,275.0,300.0
    echo "Plotting mmee channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0,275.0,300.0
  
    echo "Plotting 2e2m channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0,275.0,300.0
  
  fi
  if [ $var = "LepPt" ] || [ $var = "Z1lep1_Pt" ] || [ $var = "Z1lep2_Pt" ] || [ $var = "Z2lep1_Pt" ] || [ $var = "Z2lep2_Pt" ]
  then
    echo ${var}
    echo "All Channels"
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir} -b ${var} --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0,110.0,120.0,130.0,140.0,150.0,160.0,170.0,180.0,190.0,200.0 
     
    #echo "Plotting 4e channel"
    #
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0,110.0,120.0,130.0,140.0,150.0,160.0,170.0,180.0,190.0,200.0 
    #
    #echo "Plotting 4mu channel"
    #
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0,110.0,120.0,130.0,140.0,150.0,160.0,170.0,180.0,190.0,200.0  
    #
    #echo "Plotting eemm channel"
    #
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0,110.0,120.0,130.0,140.0,150.0,160.0,170.0,180.0,190.0,200.0  
    #
    #echo "Plotting mmee channel"
    #
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0,110.0,120.0,130.0,140.0,150.0,160.0,170.0,180.0,190.0,200.0 
  
    #echo "Plotting 2e2m channel"
    #
    #./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --scaleymax 1.1 --scalelegx 1.4 --rebin 0.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0,110.0,120.0,130.0,140.0,150.0,160.0,170.0,180.0,190.0,200.0 
  
  fi
  if [ $var = "LepEta" ] || [ $var = "Z1lep1_Eta" ] || [ $var = "Z1lep2_Eta" ] || [ $var = "Z2lep1_Eta" ] || [ $var = "Z2lep2_Eta" ]
  #if [ $var = "LepEta" ];
  then
    echo ${var}
    echo "All Channels"
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir} -b ${var} --scaleymax 2.0 --scalelegx 1.4 
     
    echo "Plotting 4e channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --scaleymax 2.0 --scalelegx 1.4
    
    echo "Plotting 4mu channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --scaleymax 2.0 --scalelegx 1.4 
    
    echo "Plotting eemm channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --scaleymax 2.0 --scalelegx 1.4 
    
    echo "Plotting mmee channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --scaleymax 2.0 --scalelegx 1.4
  
    echo "Plotting 2e2m channel"
    
    ./makeHistStack.py -s ZZ4l2018/${selection} -f ZZ4l2018NonPrompt -l 137.1 -u none --latex --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lRun2HistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --scaleymax 2.0 --scalelegx 1.4
  
  fi
done
