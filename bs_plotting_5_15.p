### ----- Tetiana, Apr 2023  #  scp -r malykht1@triton.aalto.fi:/scratch/work/malykht1/MD_calculations/Parallel/MD_4_5/15d/bsTrajectories/*.txt . 
set terminal png size 1000,800  enhanced    #redirect output to a png file (two lines should be uncommented if we need *.png)
set output "BS_ions_trajectories_135deg.png" #redirect output to a png file (two lines should be uncommented if we need *.png)
set title "MDRANGE: Trajectories of 70 keV H ions in Fe, backscattered, and detected at 135{^o} @^+{-} 10{^o}" off 0,-7 font "Times-Roman,15"
set xlabel "X, Angstroms" rotate parallel font "Times-Roman,14" off  0,-2
set ylabel "Y, Angstroms" rotate parallel font "Times-Roman,14" off  0,0
set zlabel "Z, Angstroms" rotate parallel font "Times-Roman,14" off -2,0
set zrange[0:*]
set xrange[-3400:1400]
set yrange[-1400:3500]
set ticslevel 0
set xtics off 0,-2
set ytics off 2,0
set key at -20, 7000 font ",12" spacing 2 
set tics font ", 10"  
filename = "alldatadir/5d_all.txt"               
filename2 = "alldatadir/15d_all.txt"         
set style line 1 lc rgb '#0000FF' lt 1 lw 0.1 pt 0.1 ps 0   # blue 
set style line 2 lc rgb '#00FF00' lt 1 lw 0.1 pt 0.1 ps 0   # green
set view 65,30
splot filename u 1:2:3 title "{/Symbol q}= 5{^o}" w lp ls 1, filename2 u 1:2:3 title "  {/Symbol q}=15{^o}" w lp ls 2
pause -1  "Press ENTER  to Exit"                                               
#
