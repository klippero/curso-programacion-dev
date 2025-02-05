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

    def __gt__(self,otraLinea):
        return self.__longitud > otraLinea.__longitud

    def __lt__(self,otraLinea):
        return self.__longitud < otraLinea.__longitud

    def __ge__(self,otraLinea):
        return self.__longitud >= otraLinea.__longitud

    def __le__(self,otraLinea):
        return self.__longitud <= otraLinea.__longitud

    def __eq__(self,otraLinea):
        return self.__longitud == otraLinea.__longitud
