set terminal epslatex size 7.5,4 color colortext lw 3
name='figures/baseline2'
system 'mkdir -p '.name
set output name.'/plot.tex'

set xtics add ('$e$' 2.71828, '$\pi$' 3.14159, '$\phi$' 1.61803)

set style line 1 lt 1 lc rgb '#1B9E77' pt 2 # dark teal
set style line 2 lt 1 lc rgb '#D95F02' pt 4 # dark orange
set style line 3 lt 1 lc rgb '#7570B3' pt 6 # dark lilac
set style line 4 lt 1 lc rgb '#E7298A' pt 8 # dark magenta
set style line 5 lt 1 lc rgb '#66A61E' pt 10 # dark lime green
set style line 6 lt 1 lc rgb '#E6AB02' # dark banana
set style line 7 lt 1 lc rgb '#A6761D' # dark tan
set style line 8 lc rgb '#F0027F' # magenta
set style line 9 lc rgb '#8DD3C7' # teal
set style line 10 lc rgb '#BEBADA' # lilac
set style line 11 lc rgb '#FB8072' # red
set style line 12 lc rgb '#80B1D3' # steel blue
set style line 13 lc rgb '#FDB462' # adobe orange
set style line 14 lc rgb '#B3DE69' # lime green
set style line 15 lc rgb '#FCCDE5' # mauve 

set samples 400
set yrange[-2:10]
plot x w l ls 1 t 'x with Lines', x*x w p ls 2 t 'x*x with Points', sqrt(x) w lp ls 3 t 'sqrt(x) with Linespoints', sin(x) w impulse ls 4  t 'sin(x) with Impulse'
