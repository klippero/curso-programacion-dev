from sol import *

r1 = Rectangulo(3,2)
r2 = Rectangulo(4,6)
r3 = Rectangulo(3,2)
r4 = Rectangulo(5,2)
r5 = Rectangulo(2,3)

print(r1 == r2)
print(r1 == r3)
print(r3 == r4)
print(r1 == r5)
print()

print(r1 >= r5)
print(r1 > r5)
print(r1 < r2)
print(r4 <= r5)
print()

r6 = r1 + r4
print(r1)
print()
print(r6)
print()

r1 << r3
print(r1)