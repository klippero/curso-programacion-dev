import random

LONGITUD = 6
MAXIMO = 49


class Primitiva:
    def __init__(self):
        self.__premiados = []
        for _ in range(LONGITUD):
            nuevo = random.randrange(1,MAXIMO+1)
            while nuevo in self.__premiados:
                nuevo = random.randrange(1,MAXIMO+1)
            self.__premiados.append(nuevo)
        self.__premiados.sort()
        self.__complementario = random.randrange(1,50)
        while self.__complementario in self.__premiados:
            self.__complementario = random.randrange(1,50)
        self.__reintegro = random.randrange(10)

    def __str__(self):
        result = "PREMIADOS: "
        for n in self.__premiados:
            result = result + f"{n} "
        result = result + f"\nCOMPLEMENTARIO: {self.__complementario}\nREINTEGRO: {self.__reintegro}"
        return result