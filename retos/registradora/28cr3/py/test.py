from sol import *

cr = CajaRegistradora()
cr.add(1,5)
cr.take(1)
cr.take(1,3,5)
print(f"cr: {cr}")