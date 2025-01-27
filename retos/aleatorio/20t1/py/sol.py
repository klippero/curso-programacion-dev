import random


class Aleatorio:
    def __init__(self):
        self.__numero = random.randrange(0,10)

    def es_este(self,n):
        return n == self.__numero

    def __str__(self):
        return str(self.__numero)
    
    def juego(self):
        n = -1
        while not self.es_este(n):
            n = int(input("Dime un número entre 0 y 9: "))
        print(f"Acertaste, el número era el {self.__numero}")