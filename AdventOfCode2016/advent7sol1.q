codes:read0`:advent7.q
splitlist:{(asc(0,where x="["),((where x="]") + 1)) cut x} each codes
outsideids:{x[where not(first each x)="["]} each splitlist
bracketids:{x[(where (til count x)mod 2)]} each splitlist
bracketidxs:(where all each any each{[bcodes]{[bcodes] any {?[x[y]=x[y+1];0b;?[x[y]=x[y+3];?[x[y+1]=x[y+2];1b;0b];0b]]}[bcodes] each til (count bcodes)-3} each bcodes} each bracketids)
fullidxs: (where all each any each{[bcodes]{[bcodes] any {?[x[y]=x[y+1];0b;?[x[y]=x[y+3];?[x[y+1]=x[y+2];1b;0b];0b]]}[bcodes] each til (count bcodes)-3} each bcodes} each outsideids)
count fullidxs except bracketidxs
