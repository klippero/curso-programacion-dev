class Bonobus:
    def __init__(self,viajes=10):
        if viajes > 0:
            self.__viajes = viajes
        else:
            self.__viajes = 0

    def usar(self,viajes=1):
        self.__viajes = self.__viajes - viajes

    def recarga(self,viajes):
        self.__viajes = self.__viajes + viajes

    def __str__(self):
        return f"viajes disponibles: {self.__viajes}"

    def viajes(self):
        return self.__viajes
