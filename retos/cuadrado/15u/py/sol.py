class Cuadrado:
    def __init__(self,lado):
        self.__lado = lado

    def __str__(self):
        return f"Cuadrado: {self.__lado}x{self.__lado}"

    def area(self):
        return self.__lado * self.__lado

    def lado(self):
        return self.__lado

    def agranda(self,ratio):
        self.__lado = self.__lado * ratio
