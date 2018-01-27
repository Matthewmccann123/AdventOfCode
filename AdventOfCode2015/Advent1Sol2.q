inp:read0`:Inp1.q;
t:inp="(";
first (where (sums {x:$[x="0";"-1";x]; "I"$x} each raze raze(string t))<0)+1

