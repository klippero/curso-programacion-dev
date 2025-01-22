class Entero:
    def __init__(self,n):
        self.__n = n

    def suma_previos(self):
        suma = 0
        i = 1
        while i < self.__n:
            suma = suma + i
            i = i + 1
        return suma
