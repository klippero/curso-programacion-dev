from sol import *

n = int(input("Número: "))
divisor = int(input("Divisor: "))

numero = Entero(n)
if numero.es_multiplo_de(divisor):
    print(f"{divisor} ES DIVISOR de {numero}")
else:
    print(f"{divisor} NO ES DIVISOR de {numero}")
