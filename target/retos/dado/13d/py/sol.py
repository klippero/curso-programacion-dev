import random

class Dado:
    def __init__(self):
        self.__cara_superior = random.randrange(1,7)

    def tira(self):
        self.__cara_superior = random.randrange(1,7)

    def __str__(self):
        return str(self.__cara_superior)
        # return f"{self.__cara_superior}"

    def cara_superior(self):
        return self.__cara_superior


class Tirada:
    def __init__(self):
        self.__dado1 = Dado()
        self.__dado2 = Dado()

    def total(self):
        return self.__dado1.cara_superior() + self.__dado2.cara_superior()

    def __str__(self):
        return f"{self.__dado1},{self.__dado2} > {self.total()}"


tirada1 = Tirada()
print(tirada1.total())
print(tirada1)

tirada2 = Tirada()
print(tirada2)
