class Entero:
    def __init__(self,n):
        self.__n = n

    def suma_divisores(self):
        suma = 0
        for i in range(1,self.__n):
            if self.__n % i == 0:
                suma = suma + i
        return suma

    def es_perfecto(self):
        return self.suma_divisores() == self.__n

    def mostrar_perfectos_menores(self):
        for i in range(1,self.__n):
            if Entero(i).es_perfecto():
                print(i,end=" ")
