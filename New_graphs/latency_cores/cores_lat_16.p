set   autoscale                        # scale axes automatically
unset log   x                           # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title "Latency percentile comparison for a 16 core machine"
set xlabel "Number of parallel connections"
set ylabel "Latency (ms)"
set terminal jpeg
set key left
set output 'cores_lat_16.jpg'
plot      "cores_lat.dat" using 1:11 title '16 cores: mean' with linespoints,      "cores_lat.dat" using 1:12 title '16 cores: 50pc' with linespoints,     "cores_lat.dat" using 1:13 title '16 cores: 95pc' with linespoints,  

    
    
