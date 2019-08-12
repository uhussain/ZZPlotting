#filename="Hists25Feb2019-ZZ4l2017Full.root"
#filename="Hists27Feb2019-zzPowhegSyst.root"
filename="Hists01Mar2019-zzPowhegV2Syst.root"
selection="ZZSelectionsTightLeps"
dir="ANPlots/2017/Systematics_28Feb2019_v2"
#variable="nTruePU"
variable="Mass nTruePU Z1lep1_Pt Z1lep2_Pt Z2lep1_Pt Z2lep2_Pt Z2lep2_Eta"
#Systematic="CMS_RecoEff_e CMS_eff_e CMS_eff_m CMS_pileup"
Systematic="CMS_pileup"
for syst in $Systematic
do
  for var in $variable
  do
    if [ $var = "Mass" ];
    then
      echo ${var}
      echo "All Channels"
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir} -b ${var} --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 --rebin 100.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,800.0,1000.0,1200.0 
       
      echo "Plotting 4e channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 --rebin 100.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,800.0,1000.0,1200.0 
       
      echo "Plotting 4mu channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 --rebin 100.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,800.0,1000.0,1200.0 
       
      echo "Plotting eemm channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 --rebin 100.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,800.0,1000.0,1200.0     
      echo "Plotting mmee channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 --rebin 100.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,800.0,1000.0,1200.0 
      
      echo "Plotting 2e2m channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 --rebin 100.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,800.0,1000.0,1200.0 
    fi 
    if [ $var = "LepPt" ] || [ $var = "Z1lep1_Pt" ] || [ $var = "Z1lep2_Pt" ] || [ $var = "Z2lep1_Pt" ] || [ $var = "Z2lep2_Pt" ]
    then
      echo ${var}
      echo "All Channels"
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir} -b ${var} --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
       
      echo "Plotting 4e channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2
      
      echo "Plotting 4mu channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting eemm channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting mmee channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2
    
      echo "Plotting 2e2m channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
    fi
    if [ $var = "nTruePU" ];
    then
      echo ${var}
      echo "All Channels"
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir} -b ${var} --preliminary --ratio_range 0.30 1.70 --scaleymax 1.2 --scalelegx 1.2 
       
      echo "Plotting 4e channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left  --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --preliminary --ratio_range 0.30 1.70 --scaleymax 1.2 --scalelegx 1.2
      
      echo "Plotting 4mu channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --preliminary --ratio_range 0.30 1.70 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting eemm channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --preliminary --ratio_range 0.30 1.70 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting mmee channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --preliminary --ratio_range 0.30 1.70 --scaleymax 1.2 --scalelegx 1.2
    
      echo "Plotting 2e2m channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --preliminary --ratio_range 0.30 1.70 --scaleymax 1.2 --scalelegx 1.2 
    fi
    
    if [ $var = "Z2Mass" ];
    then
      echo ${var}
      echo "All Channels"
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir} -b ${var} --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting 4e channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting 4mu channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      echo "Plotting eemm channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      echo "Plotting mmee channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
    
      echo "Plotting 2e2m channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2  
    fi
    if [ $var = "Z1Pt" ];
    then
      echo ${var}
      echo "All Channels"
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir} -b ${var} --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
       
      echo "Plotting 4e channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2
      
      echo "Plotting 4mu channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting eemm channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting mmee channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2
    
      echo "Plotting 2e2m channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
    fi
    if [ $var = "Z2Pt" ];
    then
      echo ${var}
      echo "All Channels"
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir} -b ${var} --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
       
      echo "Plotting 4e channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left  --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2
      
      echo "Plotting 4mu channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting eemm channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting mmee channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2
    
      echo "Plotting 2e2m channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
    fi
    
    if [ $var = "ZZPt" ];
    then
      echo ${var}
      echo "All Channels"
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir} -b ${var} --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting 4e channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting 4mu channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      echo "Plotting eemm channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      echo "Plotting mmee channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
    
      echo "Plotting 2e2m channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2018/${selection} -f zz4l-powheg -l 41.5 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
    fi
  done
done
