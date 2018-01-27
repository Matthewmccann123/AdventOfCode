codes:read0`:advent6.q
mycols:{codes[;x]} each til count codes[0]
raze {[num] .Q.a[where ({count where(mycols[x]=y)=1}[num] each .Q.a) = min{count where(mycols[x]=y)=1}[num] each .Q.a]} each til count mycols

