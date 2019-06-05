set terminal epslatex size 7.5,4  color colortext lw 3
name='figures/multiplot1'
system 'mkdir -p '.name
set output name.'/plot.tex'

set style line 1 lt 1 lc rgb '#1B9E77' pt 2 ps 2 # dark teal
set style line 2 lt 1 lc rgb '#D95F02' pt 4 ps 2 # dark orange
set style line 3 lt 1 lc rgb '#7570B3' pt 6 ps 2 # dark lilac
set style line 4 lt 1 lc rgb '#E7298A' pt 8 ps 2 # dark magenta
set style line 5 lt 1 lc rgb '#66A61E' pt 10 ps 2 # dark lime green
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

set multiplot layout 4,4

plot x
set multiplot next
set multiplot next
set multiplot next


plot x
set multiplot next
set multiplot next
set multiplot next


set multiplot next
set size 0.75,0.75
test
set multiplot next
set multiplot next



set size 0.5,0.5
plot    'Bleu.significance' matrix with image t ''
set multiplot next
plot 'bleu1' w l
plot 'bleu2' w lp
