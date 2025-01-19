class Entero:
    def __init__(self,n):
        self.__n = n

    def __str__(self):
        return str(self.__n)

    def es_multiplo_de(self,numero):
        if self.__n % numero == 0:
            return True
        else:
            return False
