p:ins:first ins:read0`:advent18.q
do[399999;p:{[y;x] cur:".",(-100#y),"."; an:cur[x-1],cur[x],cur[x+1]; t:?[((all an="^^.") or (((all an=".^^"))) or (all an="..^") or (all an="^.."));"^";"."]; g,:t; if[(count g)=100;y,:g;delete g from `.];y}/[p;1 + til 100]]
count where p="."
