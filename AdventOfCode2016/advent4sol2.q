codes:read0`:advent4.q
dict:(.Q.a)!til count .Q.a
newval:dict?((dict "m") + 17) mod 26
origcodes:{-7_x}each codes
shifts:{"I"$-3#x} each origcodes
codes:{-4_x} each origcodes
codes:{ssr[x;"-";" "]} each codes
decrypted:{dict?((dict codes[x]) + shifts[x]) mod 26} each til count codes
first {`long$"I"$-3#x} each (origcodes[where (count each {"north" vs x} each decrypted)=2])
