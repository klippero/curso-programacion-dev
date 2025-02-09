from sol import *

n = Entero(int(input("n: ")))
f = n.factores()
print(f"Los factores de {n} son: {f}")

n2 = Entero()
n2.desfactoriza(f)
print(f"Desfactorizando {f} resulta {n2}")