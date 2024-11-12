import random

class Dado:
    def __init__(self):
        self.__cara_superior = random.randrange(1,7)

    def tira(self):
        self.__cara_superior = random.randrange(1,7)

    def __str__(self):
        return str(self.__cara_superior)
        # return f"{self.__cara_superior}"


d = Dado()
print(d)

d.tira()
print(d)
