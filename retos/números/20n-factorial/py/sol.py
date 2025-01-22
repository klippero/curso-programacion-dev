class Entero:
    def __init__(self,n):
        self.__n = n

    def factorial(self):
        producto = 1
        i = 2 #optimizamos con 2
        while i <= self.__n:
            producto = producto * i
            i = i + 1
        return producto
