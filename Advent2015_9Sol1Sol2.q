test:{"SSJ"$x} each "  "vs/:raze each "to" vs/:(read0`:inp9.q) except\: "=";
dict:(asc each test[;0 1])!test[;2];
ans:sum each {g:x[(0 1;1 2;2 3;3 4;4 5;5 6;6 7)];dict asc each g} each {g[where (-1+count first g)<count each distinct each g:t cross x]}/[7;t:distinct raze key dict];
show min ans;
show max ans;