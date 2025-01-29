class Entero:
    def __init__(self,n):
        self.__n = n

    def factorial(self):
        producto = 1
        for i in range(1,self.__n+1):
            producto = producto * i
        return producto
