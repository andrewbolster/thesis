set terminal latex
set output "liu2006_2_Entropy-fn.tex"
set xlabel "$P(S:A,a)$"
set ylabel "$T(S:A,a)$"
set ytics 0.5
set xtics 0.25
set xzeroaxis lt 0
set size 0.5,0.5
set nokey
H(x)= x>=0.5 ? 1-(-((1-x)*log(1-x))/(log(2))-(x*log(x))/(log(2)))\
	    : -((1-x)*log(1-x))/(log(2))-(x*log(x))/(log(2)) -1
plot [0:1] H(x)
