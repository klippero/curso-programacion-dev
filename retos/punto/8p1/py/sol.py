class Punto:
    def __init__(self,x,y):
        self.__x = x
        self.__y = y

    def muestraPunto(self):
        print( f"({self.__x},{self.__y})" )