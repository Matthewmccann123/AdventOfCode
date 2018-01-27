disc1: where ({(x + 1) mod 13} 1 + til 1000000)=0
disc2:(where ({(x + 1) mod 19} 10 + til 1000000)=0)-1
disc3:(where ({(x + 1) mod 3} 2 + til 1000000)=0)-2
disc4:(where ({(x + 1) mod 7} 1 + til 1000000)=0)-3
disc5:(where ({(x + 1) mod 5} 3 + til 1000000)=0)-4
disc6:(where ({(x + 1) mod 17} 5 + til 1000000)=0)-5
first (disc1 inter disc2 inter disc3 inter disc4 inter disc5 inter disc6)

