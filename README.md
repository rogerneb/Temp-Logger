# Temp-Logger
Temp-Logger is a bash script to monitor your CPU temperature in Linux distros.

# Detect your CPU zone
First yo must detect and select your CPU zone to monitorate. In a terminal just type:
> grep . /sys/class/thermal/thermal_zone*/type

You will see something like this:
>/sys/class/thermal/thermal_zone0/type:acpitz
/sys/class/thermal/thermal_zone1/type:x86_pkg_temp
/sys/class/thermal/thermal_zone2/type:iwlwifi_1

In this example CPU its the zone1.
Edit line 2 of Temp-Logger file with your selected zone.
>zone=1 #zone selected

# Run it!
Just run in a terminal
> ./Temp-Logger

And you will see something like this:
>Temp-Logger
> Press any key to start. CTRL+C to stop.
> Time        | Temp   | TopProcess 
> 19:28:25 | 30000 | firefox-bin 21.5
> 19:28:30 | 30000 | firefox-bin 21.3 
> 19:28:35   | 30000 | ps 100 
> 19:28:40 | 32000 | firefox-bin 21.0

When you press CTRL+C the log was saved in a new CSV file

# Real time plot with GNUplot
If you want a real time plot you must install GNUplot. In Debian Based distros just type this in a terminal:
> apt install gnuplot

And then, when Temp-Logger was running, just type in other terminal
> gnuplot -p plot

![Temp-Logger with GNUplot. ](https://raw.githubusercontent.com/rogerneb/Temp-Logger/refs/heads/main/screenshot/example.png)



