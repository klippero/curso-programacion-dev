class Bonobus:
    def __init__(self,viajes = 10):
        self.__viajes = viajes

    def usar(self,viajes = 1):
        self.__viajes = self.__viajes - viajes

    def recarga(self,viajes):
        self.__viajes = self.__viajes + viajes

    def info(self):
        print( f"viajes disponibles: {self.__viajes}" )


num_viajes = int(input("Viajes que adquieres: "))

mi_bonobus = Bonobus(num_viajes)
mi_bonobus.info()

consumes = int(input("Viajes que consumes: "))

mi_bonobus.usar( consumes )
mi_bonobus.info()
