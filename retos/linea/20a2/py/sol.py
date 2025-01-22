class Linea:
    def __init__(self,longitud):
        self.__longitud = longitud

    def __str__(self):
        result = ''
        i = 1
        while i <= self.__longitud:
            result = result + '-'
            i = i+1
        return result
