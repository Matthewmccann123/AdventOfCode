c:(" "vs/:read0`:inp13.q)[;0 2 3 10];
dict:{`$x except\:"."}'[c[;0 3]]!(?[c[;1] like "*gain*";"J"$c[;2];neg "J"$c[;2]]);
show max sum'[raze'[{dict x,reverse'[x]} each 1_/:({(x;y)}':)'[a,'1#/:a:vls:{g[where t=max t:count'[distinct'[g:x cross distinct raze key dict]]]}/[7;distinct raze key dict]]]];


dict:dict,(p,reverse'[p:(8#`Matt),'distinct raze key dict ])!16#0;
show max sum'[raze'[{dict x,reverse'[x]} each 1_/:({(x;y)}':)'[a,'1#/:a:vls:{g[where t=max t:count'[distinct'[g:x cross distinct raze key dict]]]}/[8;distinct raze key dict]]]];


