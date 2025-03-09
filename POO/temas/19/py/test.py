class Frigo:
    def __init__(self,color="blanco"):
        self.__color = color
        self.__puerta = "cerrada"
        self.__temperatura = 20

    def abre(self):
        self.__puerta = "abierta"

    def cierra(self):
        self.__puerta = "cerrada"

    def fija_temperatura(self,nueva_temperatura=7):
        self.__temperatura = nueva_temperatura

    def __str__(self):
        return f'Color: {self.__color} | Puerta {self.__puerta} | {self.__temperatura}ºC ({self.para_temperatura_recomendada()})'

    def para_temperatura_recomendada(self):
        return self.__temperatura - 7

    def temperatura(self):
        return self.__temperatura

    def tiene_temperatura_recomendada(self):
        return self.__temperatura == 7


f = Frigo("rojo")
print( f )
print( f.is_temperatura_recomendada() )

f.fija_temperatura(7)
print( f )
print( f.is_temperatura_recomendada() )
