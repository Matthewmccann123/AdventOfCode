1) b:57
2) c:57
3) idx+2 (if a>0) TRUE (A=1)
5) b:5700
6) b:105700
7) c:105700
8) c:122700
9) f:1
10)d:2
11)e:2

12)g:2
13)g:4
14)g:-106696
15)idx+2 (if 0<>g) TRUE (G=106696)
17)e:3
18)g:3
19)g:-105697
20)idx-8 (if 0<>g) TRUE (G=-105697)

12)g:2
13)g:6
14)g:-104694
15)idx+2 (0<>g) TRUE (G=104694)
17)e:4
18)g:4
19)g:-105696;
20)idx-8 (if 0<>g) TRUE (g=-105696)

12)g:2
13)g:8
14)g:105692
15)idx+2 (0<>g) TRUE (G=105692)
16)e:5
18)g:5
29)g:-105695
20)idx-8 (if 0<>g) TRUE (g=-105695)

THIS LOOP RUNS 105698 times, ending wit e = 105700, breaking the loop @ 20.
a:1
b:105700
c:122700
d:2
e:105700
f:0
g:0


21) d:3
22) g:3
23) g:-105697
24) idx-13 if (0<>g) TRUE (g=-105697)

10)e=2 (runs this loop above for another 105698/7 times) for a total of 105698*105697 times total exectuions..

21) d:105700
22) g:105700
23) g:0
24) idx-13 if (0<>g) FALSE (g=0)
25) idx+2 if (f<>0) FALSE (f=0)
26) h:1
27) g:105700
28) g:17000
29) idx+2 if (g<>0) TRUE (g=17000)
30) b:105717
31) idx-23 if 1=1, 

a:1
b:105717
c:122700
d:2
e:2
f:1
g:2


8) RUNS THIS LOOP 1K TIMES more (1001 total). Adding 1 to H each each time B is not prime.
 86 primes between 105700 and 122700 (when adding 17 each time)
1001 - 86 -> 925 = answer.









