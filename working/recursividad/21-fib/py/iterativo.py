class Entero:
    def __init__(self,n):
        self.__n = n

    def fibonacci(self):
        if self.__n == 0 or self.__n == 1:
            result = self.__n
        else:
            x = 0
            y = 1
            z = 0
            for i in range(2,self.__n+1):
                z = x + y
                x = y
                y = z
            result = z
        return result


print(Entero(6).fibonacci())
