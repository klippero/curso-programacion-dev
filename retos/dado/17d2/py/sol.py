import random

class Dado:
    def __init__(self):
        self.__cara_superior = random.randrange(1,7)

    def tira(self):
        self.__cara_superior = random.randrange(1,7)

    def cara_superior(self):
        return self.__cara_superior

    def __str__(self):
        return str(self.__cara_superior)

class Tirada:
    def __init__(self):
        self.__dado1 = Dado()
        self.__dado2 = Dado()

    def total(self):
        return self.__dado1.cara_superior() + self.__dado2.cara_superior()

    def __str__(self):
        if self.__dado1.cara_superior() == self.__dado2.cara_superior():
            msg = f"{self.__dado1},{self.__dado2} > {self.total()} IGUALES"
        else:
            msg = f"{self.__dado1},{self.__dado2} > {self.total()}"
        return msg


jugador1 = Tirada()
print(jugador1)

jugador2 = Tirada()
print(jugador2)

if jugador1.total() > jugador2.total():
    print("GANA JUGADOR 1")
elif jugador2.total() > jugador1.total():
    print("GANA JUGADOR 2")
else:
    print("EMPATADOS")