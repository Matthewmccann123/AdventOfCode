codes:read0`:advent4.q
mykeys:{5#(-6#x)} each codes
codes:{-7_x}each codes
codes:{ssr[x;"-";""]} each codes
distinct 5#desc count each {where (codes[0]=x)=1} each .Q.a
.Q.a[raze {where (count each {where (codes[0]=x)=1} each .Q.a)=x} each distinct 5#desc count each {where (codes[0]=x)=1} each .Q.a]
5#.Q.a[raze {where (count each {where (codes[0]=x)=1} each .Q.a)=x} each distinct 5#desc count each {where (codes[0]=x)=1} each .Q.a]
outputs:{[inp] 5#.Q.a[raze{[inp;y] where(count each {[inp;y] where (codes[inp]=y)=1}[inp] each .Q.a)=y}[inp] each distinct 5#desc count each {[inp;y] where (codes[inp]=y)=1}[inp] each .Q.a]} each til count codes
sum {"I"$(-3#x[y])}[codes] each where ({all x[z]=y[z]}[outputs;mykeys] each til count mykeys)=1

