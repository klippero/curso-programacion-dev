import random

class Primitiva:
    def __init__(self):
        self.__n1 = random.randrange(1,50)
        self.__n2 = random.randrange(1,50)
        self.__n3 = random.randrange(1,50)
        self.__n4 = random.randrange(1,50)
        self.__n5 = random.randrange(1,50)
        self.__n6 = random.randrange(1,50)
        self.__complementario = random.randrange(1,50)
        self.__reintegro = random.randrange(1,10)

    def __str__(self):
        return f"{self.__n1}, {self.__n2}, {self.__n3}, {self.__n4}, {self.__n5}, {self.__n6} COMPLEMENTARIO: {self.__complementario} REINTEGRO: {self.__reintegro}"