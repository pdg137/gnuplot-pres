set terminal pngcairo size 800,600;
set output 'bitcoin.png';

set timefmt "%Y-%m-%d';
set xdata time;
set boxwidth 0.5 relative;
set key top left;
set y2tics;

set title "Bitcoin 2-month history"
set ylabel "price (USD)"
set y2label "volume (BTC)"

plot 'bitcoin.dat' using 1:6 \
     axes x1y2 with boxes fs solid ls 2 title "volume", \
     'bitcoin.dat' using 1:5 \
     with lines ls 1 lw 2 title "price" ;
