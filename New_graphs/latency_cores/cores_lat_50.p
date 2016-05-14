set   autoscale                        # scale axes automatically
unset log   x                           # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title "Latency (50 percentile) comparison on varying the number of cores"
set xlabel "Number of parallel connections"
set ylabel "Latency (ms)"
set terminal jpeg
set key left
set output 'cores_lat_50.jpg'
plot      "cores_lat.dat" using 1:3 title '2 Cores: 50 percentile' with linespoints,      "cores_lat.dat" using 1:6 title '4 Cores: 50 percentile' with linespoints,     "cores_lat.dat" using 1:9 title '8 Cores: 50 percentile' with linespoints,	"cores_lat.dat" using 1:12 title '16 Cores: 50 percentile' with linespoints,  

    
    
