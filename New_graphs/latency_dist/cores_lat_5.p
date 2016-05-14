set   autoscale                        # scale axes automatically
unset log   x                           # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title "Latency percentile comparison for a Five instance cluster"
set xlabel "Number of parallel connections"
set ylabel "Latency (ms)"
set terminal jpeg
set key left
set output 'dist_lat_5.jpg'
plot      "cores_lat.dat" using 1:8 title 'Five instances: mean' with linespoints,      "cores_lat.dat" using 1:9 title 'Five instances: 50pc' with linespoints,     "cores_lat.dat" using 1:10 title 'Five instances: 95pc' with linespoints,  
   
    
    
