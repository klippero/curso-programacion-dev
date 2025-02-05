class Linea:
    def __init__(self,longitud):
        self.__longitud = longitud

    def __str__(self):
        result = ''
        for _ in range(self.__longitud):
            result = result + '-'
        return result
    
    def longitud(self):
        return self.__longitud

    def __add__(self,otra):
        return Linea( self.__longitud + otra.longitud() )

    def resize(self,ratio):
        self.__longitud *= ratio
