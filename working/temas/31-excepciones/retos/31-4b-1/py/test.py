from sol import *

b1 = Bonobus()
print(b1)

b2 = Bonobus(20)
print(b2)

b3 = Bonobus(-1)
print(b3)

b3.recarga(53)
print(b3)

b3.recarga(-5)
print(b3)

b3.usar()
print(b3)

b3.usar(60)
print(b3)

print(b3.viajes())

print(b3.ultimo())
b3.usar(51)
print(b3.ultimo())
