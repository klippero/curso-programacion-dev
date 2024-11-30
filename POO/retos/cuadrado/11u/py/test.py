class Cuadrado:
    def __init__(self,lado=0):
        self.__lado = lado

    def area(self):
        return self.__lado * self.__lado


c1 = Cuadrado(8)
print(c1.area())

c2 = Cuadrado()
print(c2.area())
