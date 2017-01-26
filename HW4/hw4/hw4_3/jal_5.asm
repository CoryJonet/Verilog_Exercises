//test jump forward by 0
lbi r1, 127
lbi r2, 34
jal 0 
subi r1, r2, -16
lbi r3, 17
lbi r4, 19
halt
