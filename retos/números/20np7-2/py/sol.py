class Entero:
    def __init__(self,n):
        self.__n = n

    def es_cuadrado_perfecto(self):
        raiz = self.__n ** 0.5
        return raiz == int(raiz)

    def es_cuadrado_perfecto_while(self):
        encontrado = False
        i = 1
        while i < self.__n and not encontrado:
            encontrado = i ** 2 == self.__n
            i = i + 1
        return encontrado
