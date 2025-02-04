class Fraccion:
    def __init__(self,numerador,denominador):
        self.__numerador = numerador
        self.__denominador = denominador

    def numerador(self):
        return self.__numerador

    def denominador(self):
        return self.__denominador

    def __str__(self):
        return f"{self.__numerador}/{self.__denominador}"

    def __mul__(self,otra):
        nuevo_numerador = self.__numerador * otra.numerador()
        nuevo_denominador = self.__denominador * otra.denominador()
        return Fraccion(nuevo_numerador,nuevo_denominador)
