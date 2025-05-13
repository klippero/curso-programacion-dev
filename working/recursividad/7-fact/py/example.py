class Entero:
    def __init__(self,n):
        self.__n = n

    def factorial(self):
        return self.factorial_rec(self.__n)

    def factorial_rec(self,num):
        if num == 0:
            return 1
        else:
            return num * self.factorial_rec(num-1)

print(Entero(9).factorial())
