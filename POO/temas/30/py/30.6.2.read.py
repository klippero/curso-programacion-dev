import pickle

FICHERO = "working/ficheros/serializar/py/30.6.data.dat"

mi_objeto_recuperado = pickle.load(open(FICHERO, "rb"))

print(mi_objeto_recuperado)