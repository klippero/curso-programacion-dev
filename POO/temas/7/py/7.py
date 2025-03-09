class Frigo:
    def __init__(self):
        self.__color = "blanco"
        self.__puerta = "cerrada"
        self.__temperatura = 20

    def abre(self):
        self.__puerta = "abierta"

    def cierra(self):
        self.__puerta = "cerrada"

    def fija_temperatura(self):
        print( "se cambia la temperatura" )

    def muestra_estado(self):
        print( f'Color: {self.__color} | Puerta {self.__puerta} | {self.__temperatura}ºC' )


mi_frigo = Frigo()
mi_frigo.muestra_estado()
mi_frigo.abre()
mi_frigo.muestra_estado()
mi_frigo.cierra()
mi_frigo.muestra_estado()
