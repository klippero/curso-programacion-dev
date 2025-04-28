class Bonobus:
    def __init__(self,viajes=10):
        if viajes > 0:
            self.__viajes = viajes
        else:
            self.__viajes = 0

    def __str__(self):
        return f"{self.__viajes}"

    def recarga(self,viajes):
        if viajes > 0:
            self.__viajes = self.__viajes + viajes

    def usar(self,viajes=1):
        if viajes > 0 and self.__viajes >= viajes:
            self.__viajes = self.__viajes - viajes

    def viajes(self):
        return self.__viajes

    def ultimo(self):
        return self.__viajes == 1
