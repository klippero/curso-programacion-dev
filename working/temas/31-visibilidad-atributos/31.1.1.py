class Frigo:
    def __init__(self,color,temperatura):
        self.__color = color
        self.__temperatura = temperatura

    def temperatura(self):
        return self.__temperatura


f1 = Frigo("rojo", 7)
print(f1.temperatura())
