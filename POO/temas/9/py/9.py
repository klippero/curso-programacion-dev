class Frigo:
    def __init__(self,color):
        self.__color = color
        self.__puerta = "cerrada"
        self.__temperatura = 20

    def abre(self):
        self.__puerta = "abierta"

    def cierra(self):
        self.__puerta = "cerrada"

    def fija_temperatura(self,nueva_temperatura):
        self.__temperatura = nueva_temperatura

    def muestra_estado(self):
        print( f'Color: {self.__color} | Puerta {self.__puerta} | {self.__temperatura}ºC' )


mi_congelador = Frigo("rojo")
mi_congelador.muestra_estado()

otro =  Frigo("blanco")
otro.muestra_estado()
