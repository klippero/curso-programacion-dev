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

    def amigo(self):
        candidato = self.suma_divisores()
        if Entero(candidato).suma_divisores() != self.__n or Entero(candidato).__n == self.__n:
            candidato = -1
        return candidato
