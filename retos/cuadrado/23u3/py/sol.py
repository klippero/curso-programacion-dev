class Cuadrado:
    def __init__(self,lado):
        self.__lado = lado

    def area(self):
        return self.__lado * self.__lado

    def lado(self):
        return self.__lado

    def agranda(self,ratio):
        self.__lado = self.__lado * ratio

    def __str__(self):
        return f"Cuadrado: {self.__lado}x{self.__lado}"

    def __eq__(self,otro):
        return self.__lado == otro.lado()

    def __gt__(self,otro):
        return self.__lado > otro.lado()

    def __lt__(self,otro):
        return self.__lado < otro.lado()

    def __ge__(self,otro):
        return self.__lado >= otro.lado()

    def __le__(self,otro):
        return self.__lado <= otro.lado()

    def __add__(self,otro):
        return Cuadrado( self.__lado + otro.lado() )

    def __lshift__(self,otro):
        self.__lado = self.__lado + otro.lado()
