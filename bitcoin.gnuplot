set terminal pngcairo size 800,600
set output 'bitcoin.png'

set timefmt "%Y-%m-%d'
set xdata time
set boxwidth 0.5 relative
set key top left
set y2tics

set title "Bitcoin 2-month history"
set ylabel "price (USD)"
set y2label "volume (BTC)"

set label "Greek bank\nshutdown" at first "2015-06-27",251.21 front right offset 0,2 point pt 7

plot 'bitcoin.dat' using 1:6 \
     axes x1y2 with boxes fs solid lt 2 title "volume", \
     'bitcoin.dat' using 1:5 \
     with lines lt 1 lw 2 title "price"
