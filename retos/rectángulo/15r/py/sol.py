class Rectangulo:
    def __init__(self,base,altura):
        self.__base = base
        self.__altura = altura

    def area(self):
        return self.__base * self.__altura

    def perimetro(self):
        return 2 * (self.__base + self.__altura)

    def __str__(self):
        return f"Rectángulo de base {self.__base} y altura {self.__altura}"

    def agranda(self,ratio):
        self.__base = self.__base * ratio
        self.__altura = self.__altura * ratio
