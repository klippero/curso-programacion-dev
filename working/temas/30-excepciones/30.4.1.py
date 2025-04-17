class Frigo:
    def __init__(self,color, temperatura):
        self.__color = color
        self.__temperatura = temperatura

    def __str__(self):
        return f"Color {self.__color} | {self.__temperatura}ºC"

    def fija_temperatura(self,nueva_temperatura):
        if nueva_temperatura < 0:
            raise ValueError("no puede ser < 0")
        self.__temperatura = nueva_temperatura


f1 = Frigo("rojo", 18)
print(f1)

f1.fija_temperatura(-1)
