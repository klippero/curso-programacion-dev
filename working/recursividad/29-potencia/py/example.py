class Entero:
    def __init__(self,n):
        self.__n = n

    def potencia(self,exponente):
        if exponente == 0:
            return 1
        else:
            return self.__n * self.potencia(exponente-1)


print(Entero(2).potencia(5))
