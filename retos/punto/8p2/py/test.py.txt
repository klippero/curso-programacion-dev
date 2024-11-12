class Punto:
    def __init__(self,x,y):
        self.__x = x
        self.__y = y

    def mover(self,nueva_x,nueva_y):
        self.__x = nueva_x
        self.__y = nueva_y

    def muestraPunto(self):
        print( f"({self.__x},{self.__y})" )


q = Punto(1,-4)
q.muestraPunto()

q.mover(10,17)
q.muestraPunto()
