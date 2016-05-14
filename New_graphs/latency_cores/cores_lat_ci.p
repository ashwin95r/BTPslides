set   autoscale                        # scale axes automatically
unset log   x                           # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title "Latency (50 percentile) comparison on varying the number of cores"
set xlabel "Number of parallel connections"
set ylabel "Latency (ms)"
set terminal postscript eps enhanced color font 'Helvetica,10'
set output 'cores_lat_ci.eps'
plot      "cores_lat.dat" using 1:2 title '2 Cores: 50 percentile' with yerrorlines,      "cores_lat.dat" using 1:5:6:7 title '4 Cores: 50 percentile' with yerrorlines,     "cores_lat.dat" using 1:8:9:10 title '8 Cores: 50 percentile' with yerrorlines,	"cores_lat.dat" using 1:11:12:13 title '16 Cores: 50 percentile' with yerrorlines,  

    
    
