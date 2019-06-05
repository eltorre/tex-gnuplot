set terminal epslatex size 7.5,4 color colortext lw 3
name='figures/boxandviolin'
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

set boxwidth 0.25 absolute
set style fill solid 0.85 border lt -1
set style boxplot fraction 0.975 pt 6

bleuFiles=system("ls -1 stats/*Bleu.data")

unset xrange
do for [i=1:words(bleuFiles)] {
	set table 'bleu'.i
	plot word(bleuFiles,i) using 1 smooth kdensity bandwidth 1 
}
unset table

maxV=0
minV=99999999
do for [i=1:words(bleuFiles)] {
	stats 'bleu'.i using 1 name 'y' nooutput;
	maxV=max(maxV, y_max);
	minV=min(minV, y_min);
}
set ytics roundTo((maxV-minV)/minTics, 1)

tics=(0.5+words(bleuFiles))
set xrange [0.5:tics]

set ylabel "BLEU (→)"
unset xtics
unset yrange
plot	for [i=1:words(bleuFiles)] 'bleu'.i using (i-$2/1000.):1 w lines ls (i) t '', \
	for [i=1:words(bleuFiles)] 'bleu'.i using (i+$2/1000.):1 w lines ls (i) t '', \
	for [i=1:words(bleuFiles)] word(bleuFiles,i) using (i):1 with boxplot fc ls i t ''


