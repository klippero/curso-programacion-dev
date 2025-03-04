import pickle

OBJECT_FILE = "POO/temas/30/6/py/object.dat"

mi_objeto_recuperado = pickle.load(open(OBJECT_FILE, "rb"))

print(mi_objeto_recuperado)