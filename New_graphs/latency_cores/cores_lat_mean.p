set   autoscale                        # scale axes automatically
unset log   x                           # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title "Latency (mean) comparison on varying the number of cores"
set xlabel "Number of parallel connections"
set ylabel "Latency (ms)"
set terminal jpeg
set key left
set output 'cores_lat_mean.jpg'
plot      "cores_lat.dat" using 1:2 title '2 Cores: mean' with linespoints,      "cores_lat.dat" using 1:5 title '4 Cores: mean' with linespoints,     "cores_lat.dat" using 1:8 title '8 Cores: mean' with linespoints,	"cores_lat.dat" using 1:11 title '16 Cores: mean' with linespoints,      
