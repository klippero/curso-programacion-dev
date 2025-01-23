from sol import *

cr = CajaRegistradora()
cr.add(0.02,3)
cr.add(20,2)
print(cr)

cr.take(20,1)
print(cr)

cr.take(50,1)
print(cr)

cr.add(1,12)
cr.add(0.5,3)
print(cr)

cr.take(0.5,3)
print(cr)
