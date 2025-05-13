class Entero:
    def __init__(self,n):
        self.__n = n

    def factorial(self):
        i = 0
        f = 1
        while i < self.__n:
            i = i + 1
            f = f * i
        return f


print(Entero(9).factorial())
