ins:read0`:advent16.q
discs:{(`long$"I"$2#12_x;`long$"I"$1#(-2#x))} each ins
test:discs[til count discs;0] - 1 + til count discs
{(x mod y)=0}'[til 1000;test]
