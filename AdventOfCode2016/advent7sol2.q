codes:read0`:advent7.q
splitlist:{(asc(0, where x="["),((where x="]") + 1)) cut x} each codes
outsideids:{x[where not(first each x)="["]} each splitlist
bracketids: raze each bracketids:{x[(where (til count x)mod 2)]} each splitlist
fullidxs: (where all each any each{[bcodes]{[bcodes] any {?[x[y]=x[y+2];?[not x[y]=x[y+1];1b;0b];0b]}[bcodes] each til (count bcodes)-3} each bcodes} each outsideids)
lets: raze each lets:{lets[x][where all each any each (not null lets[x])]} each til count lets:{{3 cut raze x} each x} each test:{[bcodes]{[bcodes] {?[x[y]=x[y+2];?[not x[y]=x[y+1];(x[y+1],x[y],x[y+1]);""];""]}[bcodes] each til (count bcodes)} each bcodes} each outsideids
count where any each{[bracketids;lets] {x like raze "*",y,"*"}[bracketids] each lets }'[bracketids;lets]
