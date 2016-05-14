set   autoscale                        # scale axes automatically
unset log   x                           # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title "Latency (95 percentile) comparison on varying the number of cores"
set xlabel "Number of parallel connections"
set ylabel "Latency (ms)"
set terminal jpeg
set key left
set output 'cores_lat_95.jpg'
plot      "cores_lat.dat" using 1:4 title '2 Cores: 95 percentile' with linespoints,      "cores_lat.dat" using 1:7 title '4 Cores: 95 percentile' with linespoints,     "cores_lat.dat" using 1:10 title '8 Cores: 95 percentile' with linespoints,	"cores_lat.dat" using 1:13 title '16 Cores: 95 percentile' with linespoints,  

    
    
