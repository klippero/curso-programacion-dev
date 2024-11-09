class Cuadrado:
    def __init__(self,lado=0):
        self.__lado = lado

    def area(self):
        return self.__lado * self.__lado

    def __str__(self):
        return f"Cuadrado: {self.__lado}x{self.__lado}"


c = Cuadrado(8)
print(c)
