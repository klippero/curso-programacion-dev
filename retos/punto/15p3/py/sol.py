class Punto:
    def __init__(self, x=0,y=0):
        self.__origenX = x
        self.__origenY = y

        self.__x = x
        self.__y = y

        self.__previa_x = x
        self.__previa_y = y

    def mover(self,  nueva_x=None, nueva_y=None):
        if nueva_x == None:
            nueva_x = self.__x
        if nueva_y == None:
            nueva_y = self.__y

        self.__previa_x = self.__x
        self.__previa_y = self.__y

        self.__x = nueva_x
        self.__y = nueva_y

    def irAorigen(self):
        self.mover(self.__origenX, self.__origenY)

    def muestraPunto(self):
        print(f"({self.__x},{self.__y})")

    def vuelve(self):
        self.mover(self.__previa_x,self.__previa_y)

    def __str__(self):
        return f"({self.__x},{self.__y})"

    def distancia_origen(self):
        return ( self.__x ** 2 + self.__y ** 2 ) ** (1/2.0)

    def distancia(self,otro=None):
        # como no se puede asignar otro = Punto(0,0)
        # hacemos el truco de usar el valor por defecto None
        if otro == None:
            otro = Punto(0,0)
        return ( (otro.__x - self.__x) ** 2 + (otro.__y - self.__y) ** 2 ) ** (1/2.0)
