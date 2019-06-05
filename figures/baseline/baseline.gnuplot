set terminal epslatex size 7.5,4 color colortext lw 3
name='figures/baseline'
system 'mkdir -p '.name
set output 'figures/baseline/plot.tex'

set yrange[-2:10]
plot x w l t 'x with Lines', x*x w p t 'x*x with Points', sqrt(x) w lp t 'sqrt(x) with Linespoints', sin(x) w impulse t 'sin(x) with Impulse'
