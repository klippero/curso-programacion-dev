class Entero:
    def __init__(self,n):
        self.__n = n

    def fibonacci(self):
        return self.fibonacci_rec(self.__n)

    def fibonacci_rec(self,num):
        if num == 0 or num == 1:
            return num
        else:
            return self.fibonacci_rec(num-1) + self.fibonacci_rec(num-2)


print(Entero(6).fibonacci())
