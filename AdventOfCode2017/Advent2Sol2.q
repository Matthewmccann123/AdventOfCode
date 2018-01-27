//sum {x[1]%x[0]} each raze asc'[{[test] l[where 0={x[1] mod x[0]} each l:l[where 1<count each distinct each l:test cross test]]} each "I"${"\t"vs x}'[raze'[read0`:inp2.q]]]
sum(%)./:desc'[l[where 0={mod[x 0;x 1]}'[l:raze{t[where 2=count'[distinct'[t:x cross x]]]}'["I"${"\t"vs x}'[raze'[read0`:inp2.q]]]]]]
