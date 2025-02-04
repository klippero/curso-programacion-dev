import random


class Aleatorio:
    def __init__(self):
        self.__numero = random.randrange(0,10)
        self.__intentos = 0

    def __eq__(self,n):
        self.__intentos = self.__intentos + 1
        return n == self.__numero

    def __str__(self):
        return str(self.__numero)
    
    def juego(self):
        numeros_dichos = []
        n = int(input("Dime un número entre 0 y 9: "))

        while not self == n:
            if n in numeros_dichos:
                print("Ese ya lo has dicho. ",end="")
            else:
                numeros_dichos.append(n)
                if n > self.__numero:
                    print("Te has pasado. ",end="")
                else:
                    print("Te has quedado corto. ",end="")
            n = int(input("Dime otro un número entre 0 y 9: "))
        print(f"Acertaste al intento {self.__intentos}, el número era el {self.__numero}")
