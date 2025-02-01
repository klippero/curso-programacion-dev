import random


class Bombo:
    def __init__(self):
        self.__bolas = []
        for i in range(1,50):
            self.__bolas.append(i)
        self.mover()

    def __str__(self):
        return str(self.__bolas)

    def extrae_bola(self):
        posicion_aleatoria = random.randrange(len(self.__bolas))
        numero = self.__bolas[posicion_aleatoria]
        del self.__bolas[posicion_aleatoria]
        return numero

    def mover(self):
        for i in range(len(self.__bolas)):
            posicion_aleatoria = random.randrange(len(self.__bolas))
            aux = self.__bolas[i]
            self.__bolas[i] = self.__bolas[posicion_aleatoria]
            self.__bolas[posicion_aleatoria] = aux


class Primitiva:
    def __init__(self):
        self.__bombo = Bombo()
        self.__premiados = []
        for _ in range(6):
            self.__premiados.append(self.__bombo.extrae_bola())
        self.__premiados.sort()
        self.__complementario = self.__bombo.extrae_bola()
        self.__reintegro = random.randrange(9)

    def __str__(self):
        result = "PREMIADOS: "
        for n in self.__premiados:
            result = result + f"{n} "
        result = result + f"\nCOMPLEMENTARIO: {self.__complementario}\nREINTEGRO: {self.__reintegro}"
        result = result + f"\nBOMBO: {self.__bombo}"
        return result
