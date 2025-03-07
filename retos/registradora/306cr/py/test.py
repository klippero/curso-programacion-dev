from sol import *

cr = CajaRegistradora("cr1")
cr.add(1,5,7)
cr.take(1)
cr.add(0.10,3)
cr.add(0.01,7)
cr.take(1,3,5)
print(f"{cr}")

cr = CajaRegistradora("cr1")
print(f"La caja recuperada de fichero: {cr}")
