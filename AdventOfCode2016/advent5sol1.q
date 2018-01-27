code:read0`:advent5.q
vals:{raze x, string y}[code] each til 8000000
idxs:where {all (5#x)="00000"} each hashes:{raze string md5 x} each vals
{x[5]} each hashes[idxs]
