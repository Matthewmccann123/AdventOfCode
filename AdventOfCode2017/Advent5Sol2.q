//run this until you get a length error, check the idx, and sum total the million runs.. (this is to avoid limit error from kdb); It will take 23 runs and fail on the 24th.
list:{x[0;x[1]]+:c:$[2<x[0;x[1]];-1;1];(x[0];(x[1]+:x[0;x[1]]-c);x[2]+:1)}/[1000000;(list[0];list[1];0)]
show "look at sol file"
