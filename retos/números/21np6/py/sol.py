class Entero:
    def __init__(self,n):
        self.__n = n

    def potencia(self,exponente):
        producto = 1
        for _ in range(exponente):
            producto = producto * self.__n
        return producto
