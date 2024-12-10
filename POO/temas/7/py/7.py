class Frigo:
    def __init__(self):
        self.__color = "blanco"
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


mi_frigo = Frigo()
mi_frigo.muestra_estado()
mi_frigo.fija_temperatura(-10)
mi_frigo.muestra_estado()
