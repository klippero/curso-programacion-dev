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

    def muestra_estado(self):
        print( f'Color: {self.__color} | Puerta {self.__puerta} | {self.__temperatura}ºC' )


frigo1 = Frigo("rojo")
frigo1.muestra_estado()

frigo2 = Frigo()
frigo2.muestra_estado()

frigo2.fija_temperatura(5)
frigo2.muestra_estado()

frigo2.fija_temperatura()
frigo2.muestra_estado()
