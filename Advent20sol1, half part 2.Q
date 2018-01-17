inputs:{3 cut l[where not 0N=l:(raze "J"$"," vs/: "=" vs x except "vap<>")]} each test:read0`:input20.q;
{{x[0]:x[0]+ x[1]:(+).'flip x[1 2];x}/[2000;x]} each inputs

//part 1 above, search for hte min of that list and find index for full sol
















pt2




x:x[(til 1000) except where 1<count each {where all each test=\:test[x]} each til 1000]



x except x[raze{where all each test=\:x}'[distinct (asc test)where all each (0;0;0)=/:deltas asc test]]


inputs:inputs except inputs[raze{where all each test=\:x}'[distinct (asc test)where all each(0;0;0)=/:deltas asc test]];(1_idx;inputs)}\[1000;(til 1000;inputs)]