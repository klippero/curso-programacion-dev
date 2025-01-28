class Linea:
    def __init__(self,longitud):
        self.__longitud = longitud

    def __str__(self):
        result = ''
        for _ in range(self.__longitud):
            result = result + '-'
        return result
