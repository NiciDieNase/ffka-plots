#!/usr/bin/gnuplot

stats 'nodes' using 3
set cbrange[STATS_min:STATS_max]

set xlabel "hours"
#set ylabel "Weekday"
set cblabel "Nodes"
set palette rgbformula -7,2,-7
#set palette rgbformula 33,13,10
set cbtics
set view map
set yrange [6.5:-0.5]
set xrange [-0.5:23.5]
#set cbrange [85:115]
set ytics ("Mo" 1, "Di" 2, "Mi" 3, "Do" 4, "Fr" 5, "Sa" 6, "So" 0)

set terminal pngcairo size 1000,800
set output 'nodes.png'

splot "nodes" using 2:1:3 with image
