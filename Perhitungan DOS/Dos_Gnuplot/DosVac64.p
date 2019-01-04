set termoption enhanced
#set term post eps
set term png
set output "DosVac.png"
#set grid
set xlabel "Frequency (cm^{-1})"
set ylabel "Density of States"
set xrange [50:550]
set yrange [0:0.7]
set terminal pngcairo size 1500,1000 enhanced font "Verdana,24" 
#set key left top
set key outside
plot for [i=2:646] "Dosvac.txt" using 1:i title'' with lines lc -1
#plot "DosVac.txt" using 1:644 with lines, "DosVac.txt" using 1:645 with lines, "DosVac.txt" using 1:646  with lines