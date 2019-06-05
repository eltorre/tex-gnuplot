set terminal epslatex size 5,5 color colortext lw 3
name='figures/heatmap'
system 'mkdir -p '.name
set output name.'/plot.tex'

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

max(x, y) = (x > y ? x : y)
min(x, y) = (x < y ? x : y)
roundTo(x, y) = ceil(x/y)*y
minTics = 6
minTics = minTics-1 #Needed for having the actual requested number

set samples 3000
unset colorbox
set cbrange [-1:15]
set palette maxcolors 17
set palette model RGB defined (-1 '#FFFFFF', 0 '#1B9E77', 1 '#D95F02', 2 '#7570B3', 3 '#E7298A', 4 '#66A61E', 5 '#E6AB02', 6 '#A6761D', 7 '#F0027F', 8 '#8DD3C7', 9 '#BEBADA', 10 '#FB8072', 11 '#80B1D3', 12 '#FDB462', 13 '#B3DE69', 14 '#FCCDE5', 15 '#FF5555')

set xtics scale 0 ("" 0.5)
set ytics scale 0 ("" 0.5)
set yrange [*:*] reverse
set grid front linetype -1 lw 1
plot    'Bleu.significance' matrix with image t ''


