class Punto:
    def __init__(self, x=0,y=0):
        self.__recorrido = []
        self.mover(x,y)

    def mover(self,  nueva_x=None, nueva_y=None):
        if nueva_x == None:
            nueva_x = self.__x
        if nueva_y == None:
            nueva_y = self.__y
        self.__recorrido.append([nueva_x,nueva_y])

    def irAorigen(self):
        self.mover(self.__recorrido[0][0],self.__recorrido[0][1])

    def vuelve(self):
        if len(self.__recorrido) > 1:
            del self.__recorrido[-1]

    def __str__(self):
        return f"({self.x()},{self.y()})"

    def distancia_origen(self):
        return ( self.__x ** 2 + self.__y ** 2 ) ** (1/2.0)

    def distancia(self,otro=None):
        if otro == None:
            otro = Punto(0,0)
        return ( (otro.x() - self.x()) ** 2 + (otro.y() - self.y()) ** 2 ) ** (1/2.0)

    def cuadrante(self):
        if self.__x > 0 and self.__y > 0:
            result = 1
        elif  self.__x < 0 and self.__y > 0:
            result = 2
        elif  self.__x < 0 and self.__y < 0:
            result = 3
        elif  self.__x > 0 and self.__y < 0:
            result = 4
        else:
            result = 0
        return result

    def en_diagonal(self):
        return self.__x == self.__y

    def origen(self):
        return self.__x == self.__origenX and self.__y == self.__origenY

    def en_cuadrante (self,n):
        return self.cuadrante() == n
    
    def x(self):
        return self.__recorrido[-1][0]
    
    def y(self):
        return self.__recorrido[-1][1]
    
    def path(self):
        result = ""
        for punto in self.__recorrido:
            result = result + f"({punto[0]},{punto[1]}) > "
        return result[:-3]

    def distanciaRecta(self):
        origen = Punto(self.__recorrido[0][0],self.__recorrido[0][1])
        return self.distancia(origen)

    def distanciaRecorrida(self):
        result = 0
        for i in range(1,len(self.__recorrido)):
            p1 = Punto(self.__recorrido[i-1][0],self.__recorrido[i-1][1])
            p2 = Punto(self.__recorrido[i][0],self.__recorrido[i][1])
            result = result + p1.distancia(p2)
        return result
