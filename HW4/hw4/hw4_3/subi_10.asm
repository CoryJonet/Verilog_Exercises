//test subtracting a positive number from a negative number with 16 bit negative overflow
lbi r2, 1
slli r2, r2, 15
subi r2, r2, 1
subi r1, r2, -4
halt
