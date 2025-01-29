class Entero:
    def __init__(self,n):
        self.__n = n

    def factorial(self):
        producto = 1
        for i in range(self.__n):
            producto = producto * (i+1)
        return producto
