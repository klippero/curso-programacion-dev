class Entero:
    def __init__(self,n):
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
