inp:desc "J"$"." vs/: read0`:inp24.q;
inp:inp except nms::inp[where {x[0]~x 1} each inp:asc asc'["J"$"." vs/: read0`:inp24.q]];
nms:distinct each nms;
orig:inp where inp[;0]=0;
mx::0;
{{[st]$[0<count g:@[t; ;reverse] where raze 1=where each (first -1#st)=/:t:g[where any'[any'[(g:inp except asc each 2 cut st)in\:-1#st]]];.z.s'[st,/:g];$[first mx<vl:(sum st)+$[()~p:(raze/)nms[where raze nms in st];0;sum 2*/:p];
@[`.;`mx;:;vl];mx]]}x} each orig;
show mx;