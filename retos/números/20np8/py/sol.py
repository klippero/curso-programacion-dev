class Entero:
    def __init__(self,n):
        self.__n = n

    def potencia(self,exponente):
        producto = 1
        i = 1
        while i <= exponente:
            producto = producto * self.__n
            i = i + 1
        return producto

    def es_cuadrado_perfecto(self):
        raiz = self.__n ** (1.0/2)
        return raiz == int(raiz)

    def es_cuadrado_perfecto_while(self):
        encontrado = False
        i = 1
        while not encontrado and i < self.__n:
            encontrado = Entero(i).potencia(2) == self.__n
            i = i + 1
        return encontrado

    def mostrar_cuadrados_perfectos_menores(self):
        i = 1
        while i < self.__n:
            if Entero(i).es_cuadrado_perfecto():
                print(f"{i} ",end="")
            i = i + 1
