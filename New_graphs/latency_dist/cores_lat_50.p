set   autoscale                        # scale axes automatically
unset log   x                           # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title "Latency (50 percentile) comparison on varying the number of instances"
set xlabel "Number of parallel connections"
set ylabel "Latency (ms)"
set terminal jpeg
set key left
set output 'dist_lat_50.jpg'
plot      "cores_lat.dat" using 1:3 title 'Single instance: 50 percentile' with linespoints,      "cores_lat.dat" using 1:6 title 'Two instances: 50 percentile' with linespoints,     "cores_lat.dat" using 1:9 title 'Five instances: 50 percentile' with linespoints,  

    
    
