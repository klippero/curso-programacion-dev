class Cuadrado:
    def __init__(self,lado=0):
        self.__lado = lado

    def area(self):
        return self.__lado * self.__lado