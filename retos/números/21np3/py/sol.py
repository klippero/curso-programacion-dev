class Entero:
    def __init__(self,n):
        self.__n = n

    def suma_divisores(self):
        suma = 0
        for i in range(1,self.__n):
            if self.__n % i == 0:
                suma = suma + i
        return suma
