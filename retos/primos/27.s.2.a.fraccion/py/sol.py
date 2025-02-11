class Fraccion:

    def __init__(self,numerador,denominador):
        self.__numerador = numerador
        self.__denominador = denominador


    def __str__(self):
        return f'{self.__numerador}/{self.__denominador}'
