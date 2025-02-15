class Cuadrado:
    def __init__(self,lado):
        self.__lado = lado

    def __str__(self):
        return f"Cuadrado: {self.__lado}x{self.__lado}"

    def lado(self):
        return self.__lado

    def __eq__(self,otro):
        return self.__lado == otro.lado()


n1 = 8
n2 = 8
print( n1 == n2 )

c1 = Cuadrado(8)
c2 = Cuadrado(8)
print( c1 == c2 )
print( c1 == c1 )
