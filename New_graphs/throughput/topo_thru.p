set   autoscale                        # scale axes automatically
set log   x                           # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title "Throughput comparison on varying the number of nodes in the cluster"
set xlabel "Number of parallel connections"
set ylabel "Throughput (Number of queries per second)"
set terminal jpeg
set key left
set output 'topo_thru.jpg'
plot    "cores_thru.dat" using 1:2 title 'Single node' with linespoints , \
    "cores_thru.dat" using 1:3 title 'Two nodes' with linespoints,\
    "cores_thru.dat" using 1:4 title 'Five nodes' with linespoints,

    
    
