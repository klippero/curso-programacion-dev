class Entero:
    def __init__(self,n):
        self.__n = n

    def divisores(self):
        result = []
        for i in range(1,self.__n):
            if self.__n % i == 0:
                result.append(i)
        return result
