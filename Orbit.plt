######################## 
set term postscript landscape enhanced color "Text" 16
#set term postscript eps enhanced color solid "Text" 16
#set term postscript portrait enhanced color "Text" 16

#set size 6.0/7.0, 6.0/10.0

set output 'picture1.ps'

set zeroaxis
#set grid
set pointsize 1.0
#set mxtics 5
#set mytics 5


########################
set xlabel ' x '
set ylabel ' P(x,t) '
set title '  BELL DIAGRAM - PROBABILITY DISTRIBUTION FUNCTION '

set key top right

set style line 1 lt 1 lw 1.9 pt 3 lc rgb "magenta" 
set style line 2 lt 1 lw 1.9 pt 3 lc rgb "light-red" 
set style line 3 lt 1 lw 2.0 pt 3 lc rgb "brown"
set style line 4 lt 1 lw 1.7 pt 3 lc rgb "blue"
set style line 5 lt 1 lw 1.9 pt 3 lc rgb "orange"
set style line 6 lt 1 lw 1.9 pt 3 lc rgb "green"

set key font ",10"

plot [-6:6] [0:1.5] 'Analytical.dat' u 1:2  t ' at Row 0/ Analytical function ' w l ls 2,\
           'Analytical.dat' every 50 u 1:2 notitle w p ps 1,\
           'Row50.dat' u 1:2  t ' at Row 50, time = 0.5 sec ' w l ls 1,\
           'Row50.dat' every 50 u 1:2 notitle w p ps 1,\
           'Row100.dat' u 1:2  t ' at Row 100, time = 1.0 sec ' w l ls 5,\
           'Row100.dat' every 50 u 1:2 notitle w p ps 1,\
           'Row500.dat' u 1:2  t ' at Row 500, time = 5.0 sec ' w l ls 3,\
           'Row500.dat' every 50 u 1:2 notitle w p ps 1,\
           'Row1000.dat' u 1:2  t ' at Row 1000, time = 10.0 sec ' w l ls 4,\
           'Row1000.dat' every 50 u 1:2 notitle w p ps 1,\
           'Row10.dat' u 1:2  t ' at Row 10, time = 0.1 sec ' w l ls 6,\
           'Row10.dat' every 50 u 1:2 notitle w p ps 1,\
           
           
          
          
            
#set nologscale x
set nologscale y                       
###################################################
quit


########################

########################

