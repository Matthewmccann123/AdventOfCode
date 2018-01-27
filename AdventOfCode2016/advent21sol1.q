test:"abcdefgh"
a:"abcdefghijklmnopqrstuvwxyz"
ins:read0`:advent21.q
f:{{num:?[(x?(last y))>3;(x?(last y)) + 2; (x?(last y))+1];
        if[all ((13#y)="swap position"); 0N!tmp:x["I"$(last y)];x["I"$(last y)]:x["I"$y[14]];x["I"$y[14]]:tmp];
        if[all ((11#y)="swap letter"); let1idx:where x=y[12]; let2idx: where x=(last y); x[let1idx]:last y; x[let2idx]:y[12]];
        if[all (12#y)="rotate based";x:(neg num) rotate x];
        if[all (2#y)="re";testcut:(0,(`long$"I"$(y[18])), (`long$(("I"$(last y))+1))) cut x;testcut[1]:reverse testcut[1]; x:raze testcut];
        if[all (2#y)="mo"; let:x["I"$y[14]]; x:x except let; if[("I"$(-1#y))>0;testcut:("I"$(-1#y)) cut x;testcut[0],:let;x:raze testcut];if[("I"$(-1#y))=0;testcut:(1 cut ("q",x));testcut[0],:let;x:1_(raze testcut)]];
        if[(y like "*right*") or (y like "*left*");if[y like "*right*";x:(neg "I"$(y except a)) rotate x];if[y like "*left*";x:("I"$(y except a)) rotate x]];
        ;x}\[test;ins]}

last f[]
