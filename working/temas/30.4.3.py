class Frigo:
    def __init__(self,color, temperatura):
        self.__color = color
        try:
            self.fija_temperatura(temperatura)
        except:
            self.__temperatura = 0

    def __str__(self):
        return f"Color {self.__color} | {self.__temperatura}ºC"

    def fija_temperatura(self,nueva_temperatura):
        if nueva_temperatura < 0:
            raise ValueError("no puede ser < 0")
        self.__temperatura = nueva_temperatura


f1 = Frigo("rojo", -1)
print(f1)
