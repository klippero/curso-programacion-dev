class Entero:
    def __init__(self,n):
        self.__n = n

    def __str__(self):
        return str(self.__n)

    def par(self):
        return self.__n % 2 == 0

    def pide_numeros_hasta_par(self):
        while not self.par():
            self.__n = int(input("n: "))
