set   autoscale                        # scale axes automatically
set log   x                           # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title "Throughput comparison on varying the number of cores"
set xlabel "Number of parallel connections"
set ylabel "Throughput (Number of queries per second)"
plot    "cores_lat.dat" using 1:2 title 'Single instance: mean' with linespoints,   "cores_lat.dat" using 1:3 title 'Single instance: 50 percentile' with linespoints,    "cores_lat.dat" using 1:4 title 'Single instance: 95 percentile' with linespoints,    "cores_lat.dat" using 1:5 title 'Two instances: mean' with linespoints,    "cores_lat.dat" using 1:6 title 'Two instances: 50 percentile' with linespoints,     "cores_lat.dat" using 1:7 title 'Two instances: 95 percentile' with linespoints,    "cores_lat.dat" using 1:8 title 'Five instances: mean' with linespoints,    "cores_lat.dat" using 1:9 title 'Five instances: 50 percentile' with linespoints,    "cores_lat.dat" using 1:10 title 'Five instances: 95 percentile' with linespoints     
set terminal postscript eps enhanced color font 'Helvetica,10'
set output 'cores_lat.eps'
replot     
    
    
