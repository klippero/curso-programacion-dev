class Entero:
    def __init__(self,n):
        self.__n = n

    def suma_divisores(self):
        suma = 0
        i = 1
        while i< self.__n:
            if self.__n % i == 0:
                suma = suma + i
            i = i + 1
        return suma

    def es_perfecto(self):
        return self.suma_divisores() == self.__n

    def mostrar_perfectos_menores(self):
        i = 1
        while i < self.__n:
            if Entero(i).es_perfecto():
                print(f"{i} ",end="")
            i = i + 1
