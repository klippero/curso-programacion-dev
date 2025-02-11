class Entero:
    def __init__(self,n=0):
        self.__n = n

    def primo(self):
        i = 2
        encontrado = False
        while i < self.__n and not encontrado:
            if self.__n % i == 0:
                encontrado = True
            else:
                i = i + 1
        return i == self.__n

    def siguientePrimo(self):
        i = self.__n + 1
        while not Entero(i).primo():
            i = i + 1
        self.__n = i

    def __str__(self):
        return str(self.__n)

    def factores(self):
        factores = {}
        primo = Entero(2)
        n = self.__n
        while abs(n) != 1:
            while n % primo.__n == 0:
                if not primo.__n in factores:
                    factores[primo.__n] = 0
                factores[primo.__n] += 1
                n = n//primo.__n
            primo.siguientePrimo()
        return factores

    def desfactoriza(self,factores):
        self.__n = 1
        for factor,exponente in factores.items():
            self.__n = self.__n * factor ** exponente

    def __int__(self):
        return self.__n


class ListaEnteros:

    def __init__(self,lst):
        self.__lst = lst
  
    def __str__(self):
        return str(self.__lst)

    def mcm(self):
        # factores comunes y no comunes con mayor exponente
        mcmF = {}
        for n in self.__lst:
            fp = Entero(n).factores()
            for factor,exponente in fp.items():
                '''
                if not factor in mcmF:
                    mcmF[factor] = exponente
                elif exponente > mcmF[factor]:
                    mcmF[factor] = exponente
                '''
                if exponente > mcmF.get(factor,0):
                    mcmF[factor] = exponente
        result = Entero()
        result.desfactoriza(mcmF)
        return int(result)

    def MCD(self):
        # factores comunes con menor exponente
        MCDF = Entero(self.__lst[0]).factores()
        for n in self.__lst[1:]:
            fp = Entero(n).factores()
            for factor,exponente in MCDF.items():
                '''
                if not factor in fp:
                    # si no es común se elimina
                    MCDF[factor] = 0
                elif exponente > fp[factor]:
                    # si el nuevo es menor
                    MCDF[factor] = fp[factor]
                '''
                if exponente > fp.get(factor,0):
                    MCDF[factor] = fp.get(factor,0)
        result = Entero()
        result.desfactoriza(MCDF)
        return int(result)


class Fraccion:

    def __init__(self,numerador,denominador):
        self.__numerador = numerador
        self.__denominador = denominador


    def __str__(self):
        return f'{self.__numerador}/{self.__denominador}'


    def simplificarAcanonica(self):
        MCD = ListaEnteros([self.__numerador,self.__denominador]).MCD()
        self.__numerador = int( self.__numerador / MCD )
        self.__denominador = int( self.__denominador / MCD )

    def esPropia(self):
        return abs(self.__numerador) < abs(self.__denominador)
