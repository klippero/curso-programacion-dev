from sol import *

cr = CajaRegistradora()
cr.add(0.02)
cr.add(20,2)
cr.add(0.02,3)
print(f"cr: {cr}")

cr.take(0.02)
cr.take(0.02,1)
print(f"cr: {cr}")
