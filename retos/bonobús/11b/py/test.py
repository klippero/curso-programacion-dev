from sol import *

num_viajes = int(input("Viajes que adquieres: "))

mi_bonobus = Bonobus(num_viajes)
print(mi_bonobus.info())

consumes = int(input("Viajes que consumes: "))

mi_bonobus.usar( consumes )
print(mi_bonobus.info())
