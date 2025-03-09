class Punto:
    def __init__(self,x=0,y=0):
        self.__x = x
        self.__y = y

    def mover(self,dx=0,dy=0):
        self.__x = self.__x + dx
        self.__y = self.__y + dy

    def up(self,cuanto=1):
        self.mover(0,cuanto)

    def down(self,cuanto=1):
        self.mover(0,-cuanto)

    def right(self,cuanto=1):
        self.mover(cuanto,0)

    def left(self,cuanto=1):
        self.mover(-cuanto,0)

    def __str__(self):
        return f"({self.__x},{self.__y})"


class Jugador:
    def __init__(self,nick="Spooky"):
        self.__nick = nick
        self.__vidas = 3
        self.__posicion = Punto()

    def __str__(self):
        return f"{self.__nick} Vidas: {self.__vidas} {self.__posicion}"

    def muere(self):
        self.__vidas = self.__vidas - 1

    def vida_extra(self):
        self.__vidas = self.__vidas + 1

    def sube(self):
        self.__posicion.up()

    def salta(self):
        self.__posicion.up(3)

    def baja(self):
        self.__posicion.down()

    def derecha(self):
        self.__posicion.right()

    def izquierda(self):
        self.__posicion.left()

    def sprint_derecha(self):
        self.__posicion.right(3)

    def sprint_izquierda(self):
        self.__posicion.left(3)