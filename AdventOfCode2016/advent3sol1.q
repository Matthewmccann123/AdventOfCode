sides:read0`:advent3.q
sum {(((x[0] + x[1])>x[2]) and ((x[1] + x[2])>x[0]) and ((x[2] + x[0])>x[1]))} each triangles:"I"${1_("  " vs x)} each sides
