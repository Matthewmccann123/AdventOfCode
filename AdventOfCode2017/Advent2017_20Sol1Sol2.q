//pt1
inputs:{3 cut l[where not 0N=l:(raze "J"$"," vs/: "=" vs x except "vap<>")]} each test:read0`:input20.q;
c?min c:sum each abs each ({{x[0]:x[0]+ x[1]:(+).'flip x[1 2];x}/[1000;x]} each inputs)[;0]



//pt2
inputs:{3 cut l[where not 0N=l:(raze "J"$"," vs/: "=" vs x except "vap<>")]} each test:read0`:input20.q;
count {x[;0]:x[;0]+x[;1]:x[;1]+x[;2];t:x[;0];x:x except x[raze l[where 1<count'[l:group t?t]]];x}/[100;inputs]




