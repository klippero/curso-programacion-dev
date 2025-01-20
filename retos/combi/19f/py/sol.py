class MaquinaFrio:
    def __init__(self,temperatura,temperatura_recomendada):
        self.__temperatura_recomendada = temperatura_recomendada
        self.__puerta = "cerrada"
        self.__temperatura = temperatura

    def abre(self):
        self.__puerta = "abierta"

    def cierra(self):
        self.__puerta = "cerrada"

    def fija_temperatura(self,nueva_temperatura=None):
        if nueva_temperatura == None:
            nueva_temperatura = self.__temperatura_recomendada
        self.__temperatura = nueva_temperatura

    def para_temperatura_recomendada(self):
        return self.__temperatura_recomendada - self.__temperatura

    def temperatura(self):
        return self.__temperatura

    def __str__(self):
        return f"Puerta {self.__puerta} | {self.__temperatura}ºC ({self.para_temperatura_recomendada()}ºC)"

    def ok(self):
        return self.__temperatura == self.__temperatura_recomendada


class FrigorificoCombi:
    def __init__(self,temperatura=20):
        self.__frigorifico = MaquinaFrio(temperatura,7)
        self.__congelador = MaquinaFrio(temperatura,-18)

    def __str__(self):
        return f"Frigo {self.__frigorifico} | Congelador {self.__congelador}"

    def frigorifico(self):
        return self.__frigorifico

    def congelador(self):
        return self.__congelador

    def ok(self):
        return self.__frigorifico.ok() and self.__congelador.ok()
