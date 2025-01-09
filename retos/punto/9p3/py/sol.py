class Punto:
    def __init__(self,x=0,y=0):
        self.__origenX = x
        self.__origenY = y

        self.__x = x
        self.__y = y

        self.__previa_x = x
        self.__previa_y = y

    def mover(self,nueva_x=None,nueva_y=None):
        self.__previa_x = self.__x
        self.__previa_y = self.__y

        if nueva_x:
            self.__x = nueva_x
        if nueva_y:
            self.__y = nueva_y

    def irAorigen(self):
        self.mover( self.__origenX, self.__origenY )

    def muestraPunto(self):
        print( f"({self.__x},{self.__y})" )

    def vuelve(self):
        self.mover( self.__previa_x, self.__previa_y )