class Entero:
    def __init__(self,n):
        self.__n = n

    def potencia(self,exponente):
        producto = 1
        i = 1
        while i <= exponente:
            producto = producto * self.__n
            i = i + 1
        return producto
