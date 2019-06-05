set terminal epslatex size 7.5,4 color colortext lw 3
name='figures/test'
system 'mkdir -p '.name
set output name.'/plot.tex'

test
