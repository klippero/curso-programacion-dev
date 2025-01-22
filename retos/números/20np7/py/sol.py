class Entero:
    def __init__(self,n):
        self.__n = n

    def es_cuadrado_perfecto(self):
        raiz = self.__n ** 0.5
        return raiz == int(raiz)
