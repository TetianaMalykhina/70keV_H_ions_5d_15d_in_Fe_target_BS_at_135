### ----- Tetiana, Apr 2023
#  scp -r malykht1@triton.aalto.fi:/scratch/work/malykht1/MD_calculations/Parallel/MD_4_5/15d/bsTrajectories/*.txt .
### ======= Set the output to a png file    (two line can be uncommented if we need *.png)
#set terminal png size 1600,1600
#set output "BS_ions_trajectories_135deg.png"
#
set title "70 keV H ions in Fe, backscattered and detected at 135 deg." font "Times-Roman,12"
set xlabel "X, Angstroms" rotate parallel font "Times-Roman,12" off -2,0
set ylabel "Y, Angstroms" rotate parallel font "Times-Roman,12" off -2,0
set zlabel "Z, Angstroms" rotate parallel font "Times-Roman,12" off -2,0
set zrange[0:*]
set ticslevel 0
set key font ",11"
set tics font ", 11" off -1,0
filename = "alldatadir/5d_all.txt"               
filename2 = "alldatadir/15d_all.txt"              
set style line 1 lc rgb '#0000FF' lt 1 lw 0.5 pt 1 ps 0   # blue 
set style line 2 lc rgb '#00FF00' lt 1 lw 0.5 pt 1 ps 0   # green
splot filename u 1:2:3  title "5 deg" w lp ls 1,  filename2 u 1:2:3  title "15 deg" w lp ls 2
pause -1  "Press ENTER key to continue"
#
