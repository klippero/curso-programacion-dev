class Punto:
    def __init__(self,x,y):
        self.__origenX = x
        self.__origenY = y

        self.__x = x
        self.__y = y

        self.__previa_x = x
        self.__previa_y = y

    def mover(self,nueva_x,nueva_y):
        self.__previa_x = self.__x
        self.__previa_y = self.__y

        self.__x = nueva_x
        self.__y = nueva_y

    def irAorigen(self):
        self.mover(self.__origenX,self.__origenY)

    def muestraPunto(self):
        print( f"({self.__x},{self.__y})" )

    def vuelve(self):
        self.mover(self.__previa_x,self.__previa_y)


q = Punto(1,-4)
q.muestraPunto()

q.mover(10,17)
q.muestraPunto()

q.mover(-3,2)
q.muestraPunto()

q.vuelve()
q.muestraPunto()

q.irAorigen()
q.muestraPunto()

q.vuelve()
q.muestraPunto()

q.vuelve()
q.muestraPunto()

q.vuelve()
q.muestraPunto()
