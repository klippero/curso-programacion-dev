class Entero:
    def __init__(self,n):
        self.__n = n

    def suma_previos(self):
        suma = 0
        for i in range(self.__n):
            suma = suma + i
        return suma
