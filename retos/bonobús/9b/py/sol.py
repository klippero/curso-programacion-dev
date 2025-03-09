class Bonobus:
    def __init__(self,viajes):
        self.__viajes = viajes
        print( f"Nuevo bonobús con {self.__viajes} viajes" )

    def usar(self):
        self.__viajes = self.__viajes - 1
        print( f"Se usa 1 viaje y quedan {self.__viajes}" )

    def recarga(self,viajes):
        self.__viajes = self.__viajes + viajes
        print( f"Se recargan {viajes} y quedan {self.__viajes}" )

    def info(self):
        print( f"Viajes disponibles: {self.__viajes}" )
