class Frigo:
    def __init__(self,color,temperatura):
        self.__color = color
        self.__temperatura = temperatura

    @property
    def temperatura(self):
        return self.__temperatura

    def set_temperatura(self,nueva_temperatura):
        self.__temperatura = nueva_temperatura


f1 = Frigo("rojo", 7)
f1.set_temperatura(17)
print(f1.temperatura)