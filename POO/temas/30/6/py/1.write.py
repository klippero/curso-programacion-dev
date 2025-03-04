from Primitiva import *
import pickle

OBJECT_FILE = "POO/temas/30/6/py/object.dat"

p = Primitiva()
print(p)

pickle.dump(p, open(OBJECT_FILE, "wb"))
