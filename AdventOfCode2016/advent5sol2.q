code:read0`:advent5.q
vals:{raze x, string y}[code] each til 30000000
idxs:where{all (5#x)="00000"} each hashes:{raze string md5 x} each vals
vals:{x[5],x[6]} each hashes[idxs]
dict:vals[;0]!vals[;1]
dict[string til 8]

