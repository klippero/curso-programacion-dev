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

    def __int__(self):
        return self.__segundos + self.__minutos * 60 + self.__horas * 60 * 60

    def __add__(self,otro):
        return Tiempo(self.__horas + otro.__horas, self.__minutos + otro.__minutos, self.__segundos + otro.__segundos)

    def __lshift__(self,otro):
        self.__horas += otro.__horas
        self.__minutos += otro.__minutos
        self.__segundos += otro.__segundos
        self.normalize()

    def __gt__(self,otro):
        return int(self) > int(otro)
