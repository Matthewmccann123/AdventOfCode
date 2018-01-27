p:{t:(raze string md5 x)[where not differ raze string md5 x];val:ssr[(3# first t[where{(raze string md5 x) like ("*",(3#y),"*")}[x] each t]);" ";""]; (val;x)} each ("ihaygndm",/: string til 100000)
p:p[where {(count x[0]) > 1} each p]
p:{(x[0];"I"$(x[1] except .Q.a))} each p
t:({list:"ihaygndm",/:string (x[1] + (1 + til 1000)); search:5#(first x[0]);t:(any{(raze string md5 y) like ("*",x,"*")}[search] each list); ans:$[0N!t;x[1];0];ans} each p)
(t except 0b)[63]
