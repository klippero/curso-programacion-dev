import random

class Dado:
    def __init__(self):
        self.__cara_superior = random.randrange(1,7)

    def tira(self):
        self.__cara_superior = random.randrange(1,7)

    def muestra_cara_superior(self):
        print(self.__cara_superior)


d = Dado()
d.muestra_cara_superior()

d.tira()
d.muestra_cara_superior()
