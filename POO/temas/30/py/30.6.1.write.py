from Primitiva import *
import pickle

FICHERO = "working/ficheros/serializar/py/30.6.data.dat"

p = Primitiva()
print(p)

pickle.dump(p, open(FICHERO, "wb"))
