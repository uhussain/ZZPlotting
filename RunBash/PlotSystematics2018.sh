#filename="Hists21Feb2019-ZZ4l2018.root"
filename="Hists19Mar2019-ZZ4l2018Mu17Uncert.root"
#filename="Hists06Mar2019-ZZ4l2018.root"
selection="ZZSelectionsTightLeps"
dir="ANPlots/2018/SystematicsMu17_19Mar2019"
#variable="Mass"
variable="Mass nTruePU Z1lep1_Pt Z1lep2_Pt Z2lep1_Pt Z2lep2_Pt"
#Systematic="CMS_RecoEff_e CMS_eff_e CMS_eff_m CMS_pileup"
Systematic="CMS_eff_m"
for syst in $Systematic
do
  for var in $variable
  do
    if [ $var = "Mass" ];
    then
      echo ${var}
      echo "All Channels"
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir} -b ${var} --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 --rebin 100.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,800.0,1000.0,1200.0 
       
      echo "Plotting 4e channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 --rebin 100.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,800.0,1000.0,1200.0
       
      echo "Plotting 4mu channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 --rebin 100.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,800.0,1000.0,1200.0
       
      echo "Plotting eemm channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 --rebin 100.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,800.0,1000.0,1200.0
      echo "Plotting mmee channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 --rebin 100.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,800.0,1000.0,1200.0
      
      echo "Plotting 2e2m channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 --rebin 100.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,800.0,1000.0,1200.0 
    fi 
    if [ $var = "LepPt" ] || [ $var = "Z1lep1_Pt" ] || [ $var = "Z1lep2_Pt" ] || [ $var = "Z2lep1_Pt" ] || [ $var = "Z2lep2_Pt" ]
    then
      echo ${var}
      echo "All Channels"
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir} -b ${var} --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
       
      echo "Plotting 4e channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2
      
      echo "Plotting 4mu channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting eemm channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting mmee channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2
    
      echo "Plotting 2e2m channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2
    fi
    if [ $var = "nTruePU" ];
    then
      echo ${var}
      echo "All Channels"
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir} -b ${var} --preliminary --ratio_range 0.30 1.70 --scaleymax 1.2 --scalelegx 1.2 
       
      echo "Plotting 4e channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left  --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --preliminary --ratio_range 0.30 1.70 --scaleymax 1.2 --scalelegx 1.2
      
      echo "Plotting 4mu channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --preliminary --ratio_range 0.30 1.70 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting eemm channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --preliminary --ratio_range 0.30 1.70 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting mmee channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --preliminary --ratio_range 0.30 1.70 --scaleymax 1.2 --scalelegx 1.2
    
      echo "Plotting 2e2m channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --preliminary --ratio_range 0.30 1.70 --scaleymax 1.2 --scalelegx 1.2 
    fi
    
    if [ $var = "Z2Mass" ];
    then
      echo ${var}
      echo "All Channels"
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir} -b ${var} --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting 4e channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting 4mu channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      echo "Plotting eemm channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      echo "Plotting mmee channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
    
      echo "Plotting 2e2m channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 --rebin 100.0,200.0,250.0,300.0,350.0,400.0.300.0,600.0.300.0,1000.0,1200.0 
    fi
    if [ $var = "Z1Pt" ];
    then
      echo ${var}
      echo "All Channels"
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir} -b ${var} --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
       
      echo "Plotting 4e channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2
      
      echo "Plotting 4mu channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting eemm channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting mmee channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2
    
      echo "Plotting 2e2m channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2
    fi
    if [ $var = "LepPt" ];
    then
      echo ${var}
      echo "All Channels"
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir} -b ${var} --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
       
      echo "Plotting 4e channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left  --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2
      
      echo "Plotting 4mu channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting eemm channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting mmee channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2
    
      echo "Plotting 2e2m channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
    fi
    
    if [ $var = "ZZPt" ];
    then
      echo ${var}
      echo "All Channels"
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir} -b ${var} --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting 4e channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eeee -b ${var} -c eeee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      
      echo "Plotting 4mu channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmmm -b ${var} -c mmmm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      echo "Plotting eemm channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/eemm -b ${var} -c eemm --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
      echo "Plotting mmee channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --legend_left --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/mmee -b ${var} -c mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
    
      echo "Plotting 2e2m channel"
      
      ./plotSystematic.py --systematic ${syst} -s ZZ4l2019/${selection} -f zz4l-powheg -l 59.67 -u none --nostack --hist_file /afs/cern.ch/user/u/uhussain/ZZ4lHistFiles/${filename} --folder_name ${dir}/2e2m -b ${var} -c eemm,mmee --preliminary --ratio_range 0.95 1.05 --scaleymax 1.2 --scalelegx 1.2 
    fi
  done
done
