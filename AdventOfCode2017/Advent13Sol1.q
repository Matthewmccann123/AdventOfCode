x:"";
ids:{x:raze (x)}\[100;x];
inp:"J"$": " vs/: read0`:inp13.q.txt;
inp:asc inp, {(x;0)}'[(til 100) except inp[;0]];
{ids[x 0]:$[0=x[1];" ";raze "x",(x[1]-1)#" "]} each inp;
lol:{[test] {[list]if[1=count list[0];:list]; bol:list[1];list:list[0];bol:$[(idx:list?"x")in(0;-1+count list);not bol;bol];$[bol;list[idx,idx+1]:" x";list[idx,idx-1]:" x"];(list;bol)}\[100;(test;0b)] }each 100#ids
sum (((!). flip inp)nom:(where {[i](first lol[i;i][0])="x"} each til 100) except where inp[;1]=0)*nom




