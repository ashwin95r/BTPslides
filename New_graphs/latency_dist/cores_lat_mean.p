set   autoscale                        # scale axes automatically
unset log   x                           # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title "Latency (Mean) comparison on varying the number of instances"
set xlabel "Number of parallel connections"
set ylabel "Latency (ms)"
set terminal jpeg
set key left
set output 'dist_lat_mean.jpg'
plot      "cores_lat.dat" using 1:2 title 'Single instance: mean' with linespoints,      "cores_lat.dat" using 1:5 title 'Two instances: mean' with linespoints,     "cores_lat.dat" using 1:8 title 'Five instances: mean' with linespoints,  
   
    
    
