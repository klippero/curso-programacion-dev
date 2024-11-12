class Bonobus:
    def __init__(self,viajes=10):
        self.__viajes = viajes

    def usar(self,viajes=1):
        self.__viajes = self.__viajes - viajes

    def recarga(self,viajes):
        self.__viajes = self.__viajes + viajes

    def info(self):
        print( f"Viajes disponibles: {self.__viajes}" )


mi_bonobus = Bonobus(20)
mi_bonobus.info()
mi_bonobus2 = Bonobus()
mi_bonobus2.info()

mi_bonobus2.usar()
mi_bonobus2.info()
mi_bonobus2.usar(3)
mi_bonobus2.info()
