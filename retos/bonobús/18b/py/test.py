from sol import *

num_viajes = int(input("Viajes que adquieres: "))

mi_bonobus = Bonobus(num_viajes)
print(mi_bonobus)

viajes = int(input("Viajes que deseas usar: "))
mi_bonobus.usar(viajes)
print(mi_bonobus)
