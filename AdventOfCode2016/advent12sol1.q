ins:read0`:advent12.q;
dict:"abcd"!4#0;
t:0;cntr:0;
{t:0; if[ins[x] like "*inc*";(dict -1#ins[x])+:1;x]; if[ins[x] like "*dec*";(dict -1#ins[x])-:1;x];if[ins[x] like "*cpy*";if[first ssr[-1_(3_ins[x]);" ";""]>50;(dict first -1#ins[x]):dict(first ssr[-1_(-3#ins[x]);" ";""])]; if[(first ssr[-1_(3_ins[x]);" ";""] in "123456789");(dict -1#ins[x]): "I"$ssr[-1_(3_ins[x]);" ";""]]];if[ins[x] like "*jnz*";if[(first dict ssr[-2_(3_ins[x]);" ";""])>0;t:"I"$(-2#ins[x])]]; if[ins[x] like "*jnz*";if[("I"$ssr[-2_(3_ins[x]);" ";""])>0;t:"I"$(-2#ins[x])]];if[t<>0;x+:t]; if[t=0;x+:1]; x}\[{x<23};cntr]

