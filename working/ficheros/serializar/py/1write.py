import pickle

FICHERO = "working/ficheros/serializar/marshall.dat"

# Importar la clase desde otro archivo (suponiendo que '26mp.py' existe y tiene 'Primitiva')
from _26mp import Primitiva  

p = Primitiva()
print(p)

with open(FICHERO, 'wb') as file:
    pickle.dump(p, file)  # Serializar el objeto y guardarlo en el archivo
