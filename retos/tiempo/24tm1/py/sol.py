class Tiempo:
    def __init__(self,horas,minutos,segundos):
        self.__horas = horas
        self.__minutos = minutos
        self.__segundos = segundos
        self.normalize()

    def __str__(self):
        return f"{self.__horas}:{self.__minutos}:{self.__segundos}"

    def normalize(self):
        self.__minutos += self.__segundos // 60
        self.__segundos = self.__segundos % 60
        self.__horas += self.__minutos // 60
        self.__minutos = self.__minutos % 60
