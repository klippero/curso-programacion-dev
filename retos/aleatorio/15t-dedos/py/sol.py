import random

class Mano:
    def __init__(self):
        self.__dedos = 0

    def saca_dedos(self):
        self.__dedos = random.randrange(6)

    def dedos(self):
        return self.__dedos

    def __str__(self):
        return str(self.__dedos)
