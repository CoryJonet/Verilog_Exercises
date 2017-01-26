//test subtracting a positive number from a negative number with overflow.
lbi r1, 127
lbi r2, 127
subi r1, r2, -3
halt
