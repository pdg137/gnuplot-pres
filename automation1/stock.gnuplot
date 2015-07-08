set terminal pngcairo size 800,600
set output 'stock.png'

set timefmt '%Y-%m-%d'
set xdata time
set format x "%b %Y"
set xtics auto rotate by -90

plot 'stock.dat' using 1:2 with lines title 'Dow Jones Average' lt 1 lw 2