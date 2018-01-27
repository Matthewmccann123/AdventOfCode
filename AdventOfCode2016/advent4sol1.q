codes:read0`:advent4.q
mykeys:{5#(-6#x)} each codes
codes:{-11_x}each codes
codes:{ssr[x;"-";""]} each codes
distinct 5#desc count each {where (codes[0]=x)=1} each .Q.a
.Q.a[raze {where (count each {where (codes[0]=x)=1} each .Q.a)=x} each distinct 5#desc count each {where (codes[0]=x)=1} each .Q.a]
endval:5#.Q.a[raze {where (count each {where (codes[0]=x)=1} each .Q.a)=x} each distinct 5#desc count each {where (codes[0]=x)=1} each .Q.a]
