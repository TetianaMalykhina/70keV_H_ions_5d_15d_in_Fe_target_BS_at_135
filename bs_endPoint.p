### ----- Tetiana, Apr 2023
#set terminal png size 1600,1200
#set output "BS_ions_endPoints_135deg.png"
set title "MDRANGE: Projected End positions of 70 keV H ions, backscattered from Fe, and detected at 135{^o} @^+{-} 10{^o}" font "Times-Roman,10"
set xlabel "X, Angstroms" rotate parallel font "Times-Roman,11" off -1,0
set ylabel "Y, Angstroms" rotate parallel font "Times-Roman,11" off -1,0
set key font ",10"
set tics font ", 10" off -1,0        
set style line 1 lc rgb '#0000FF' lt 1 lw 0.1 pt 0.1 ps 0   # blue 
set style line 2 lc rgb '#00FF00' lt 1 lw 0.1 pt 0.1 ps 0   # green
set view 80, 0
plot "det5.txt" u 4:5  title " {/Symbol q}= 5{^o}" lc rgb '#0000FF',  "det15.txt" u 4:5 title "{/Symbol q}=15{^o}" lc rgb '#00FF00'
pause -1  "Press ENTER key to Exit"
#
