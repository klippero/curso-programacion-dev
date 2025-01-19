class Año:
    def __init__(self,year):
        self.__año = year

    def __str__(self):
        return str(self.__año)

    def es_bisiesto(self):
        if self.__año % 4 == 0:
            return True
        else:
            return False