sides:read0`:advent3.q
triangles:{x[where not x=0N]} each triangles:"I"${1_("  " vs x)} each sides
col0:{x[0]} each triangles
col1:{x[1]} each triangles
col2:{x[2]} each triangles
sum {(((x[0] + x[1])>x[2]) and ((x[1] + x[2])>x[0]) and ((x[2] + x[0])>x[1]))} each newtri:{(floor((count x)%3))#3 cut x}[col0,col1,col2]
