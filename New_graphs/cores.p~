set   autoscale                        # scale axes automatically
set log   x                           # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title "Throughput comparison on varying the number of cores"
set xlabel "Number of parallel connections"
set ylabel "Throughput (Number of queries per second)"
plot    "cores_thru.dat" using 1:2 title '2 cores' with linespoints , \
    "cores_thru.dat" using 1:3 title '4 cores' with linespoints,\
    "cores_thru.dat" using 1:4 title '8 cores' with linespoints,\
    "cores_thru.dat" using 1:5 title '16 cores' with linespoints    
set terminal postscript eps enhanced color font 'Helvetica,10'
set output 'cores_thru.eps'
replot     
    
    
