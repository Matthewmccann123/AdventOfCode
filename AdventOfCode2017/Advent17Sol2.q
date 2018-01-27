//run the below in two chunks of 25mill if you have issues with memory,
ans:{c:1+p:(349+x 0)mod 1+x[1];(p+1;x[1]+1;c)}\[50000000;(1;1;0)];
(last ans[where 1=ans[;2]])[1]
ans:{c:1+p:(349+x[1])mod 1+x[0];(x[0]+1;c)}\[25000000;(1;1)];
ans:{c:1+p:(349+x[1])mod 1+x[0];(x[0]+1;c)}\[250000000;(25000001;9525590)]
(last ans[where 1=ans[;2]])[1]