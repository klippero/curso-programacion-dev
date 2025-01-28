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

    def es_amigo(self):
        return self.amigo() != -1
    
    def __str__(self):
        return str(self.__n)

    def muestra_amigos_previos(self):
        for i in range(self.__n):
            ni = Entero(i)
            if ni.es_amigo() and ni.amigo() > ni.__n:
                print(f"{ni},{ni.amigo()}")
