class Frigo:
    def __init__(self):
        self.__color = "blanco"
        self.__puerta = "cerrada"
        self.__temperatura = 20

    def abre(self):
        print( "se está abriendo" )

    def cierra(self):
        print( "se está cerrando" )

    def fija_temperatura(self):
        print( "se cambia la temperatura" )

    def muestra_estado(self):
        print( self.__color )
        print( self.__puerta )
        print( self.__temperatura )


mi_frigo = Frigo()
mi_frigo.muestra_estado()
