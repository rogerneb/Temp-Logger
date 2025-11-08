#you need to install gnuplot
set datafile separator ";"
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%H:%M"
set xlabel "Time"
set ylabel "Temp (thousandths °C)"
set yrange [25000:100000]
plot "templog.csv" using 1:2 with lines title "CPU Temp" #change your cvs file


while (1) {
    replot
    pause 5
}

