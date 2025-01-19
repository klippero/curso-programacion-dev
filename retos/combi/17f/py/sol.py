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
        if self.__temperatura > self.__temperatura_recomendada:
            msg = f"Puerta {self.__puerta} | {self.__temperatura}ºC ({self.para_temperatura_recomendada()}ºC) ALERTA"
        else:
            msg = f"Puerta {self.__puerta} | {self.__temperatura}ºC ({self.para_temperatura_recomendada()}ºC)"
        return msg


class FrigorificoCombi:
    def __init__(self):
        self.__frigorifico = MaquinaFrio(20,7)
        self.__congelador = MaquinaFrio(20,-18)

    def __str__(self):
        return f"Frigo {self.__frigorifico} | Congelador #{self.__congelador}"

    def frigorifico(self):
        return self.__frigorifico

    def congelador(self):
        return self.__congelador
