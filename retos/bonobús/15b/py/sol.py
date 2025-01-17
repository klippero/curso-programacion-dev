class Bonobus:
    def __init__(self, viajes = 10 ):
        self.__viajes = viajes

    def usar(self,viajes = 1):
        self.__viajes = self.__viajes - viajes

    def recarga(self,viajes):
        self.__viajes = self.__viajes + viajes

    def __str__(self):
        return f"{self.__viajes}"
