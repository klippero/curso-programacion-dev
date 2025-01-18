class Triangulo:
    def __init__(self,b,a):
        self.__base = b
        self.__altura = a

    def area(self):
        return self.__base * self.__altura / 2
