dict:(`Dagger`SS`Warham`Longsword`Gaxe`leather`chainmail`splintmail`bandedmail`platemail`d1`d2`d3`df1`df2`df3)!(8 4 0;10 5 0;25 6 0;40 7 0;74 8 0;13 0 1;31 0 2;53 0 3;75 0 4;102 0 5;25 1 0;50 2 0;100 3 0;20 0 1;40 0 2;80 0 3);
weapons:`Dagger`SS`Warham`Longsword`Gaxe;
armor:`leather`chainmail`splintmail`bandedmail`platemail;
rings:`d1`d2`d3`df1`df2`df3;
combs:combs except combs[where {(count x)> count distinct raze x}'[combs:(armor cross rings),(gr cross rings),(weapons cross rings cross rings),(weapons cross rings),(weapons),(gr:g cross rings),(g:weapons cross armor)]];
sols:raze each sum each dict'[combs];
solsnw: flip (sols[;0];1|(-2 + sols[;1]);(1|9-sols[;2]));
tests:asc solsnw[where solsnw[;1]>=solsnw[;2]];
a:{{myhp:x[0]; bosshp:x[1]; cr:x[2]; (myhp-cr[2];bosshp-cr[1];cr) }/[{all (x[0]>0),(x[1]>0)};(100;103;x)]}'[tests];
a:flip (a[;0] + tests[;2];a[;1];a[;2]);


//pt2
tests2:asc solsnw[where solsnw[;1]<=solsnw[;2]];
b:{{myhp:x[0]; bosshp:x[1]; cr:x[2]; (myhp-cr[2];bosshp-cr[1];cr) }/[{all (x[0]>0),(x[1]>0)};(100;103;x)]}'[tests2];

show a[first where ((a[;0]>0) and (a[;1]<=0))][2][0];
show b[last where ((b[;0]<=0) and (b[;1]>=0))][2][0];
