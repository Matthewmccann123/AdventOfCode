pt2;
firsta:591;
firstb:393;
diver:2147384647;
inp:{((x[0]*testa)mod diver;(x[1]*testb)mod diver)}\[41000000;(firsta;firstb)];
bs:bs[where not 0=bs:{$[0=x[1] mod 8;x[1];0]} each inp];
as:as[where not 0=as:{$[0=x[0] mod 4;x[0];0]} each inp];
count where raze {p:0b vs/: x;not 1_differ -16#/:p}'[flip (5000000#as;5000000#bs)]