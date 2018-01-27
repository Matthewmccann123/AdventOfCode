p:{b:{raze string md5 x}/[2017;x]; t:b[where not differ b]; val:ssr[(3# first t[where{x like ("*",(3#y),"*")}[b] each t]);" ";""]; (val;x)} peach ("ihaygndm",/: string til 30000)
p:{(x[0];"I"$(x[1] except .Q.a))} peach p
vals:{({raze string md5 x}/[2017;x])} peach ("ihaygndm",/: string til 30000)
t:({list:vals[(x[1] + (1 + til 1000))]; search:5#(first x[0]);t:$[all search="     ";0b;(any{y like ("*",x,"*")}[search] each list)]; ans:$[t;x[1];0];ans} peach p)
(t except 0)[63]
