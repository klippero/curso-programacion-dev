class Frigo:
    def __init__(self,color="blanco"):
        self.__color = color
        self.__puerta = "cerrada"
        self.__temperatura = 20

    def abre(self):
        self.__puerta = "abierta"

    def cierra(self):
        self.__puerta = "cerrada"

    def fija_temperatura(self,nueva_temperatura=7):
        self.__temperatura = nueva_temperatura

    def muestra_estado(self):
        print( f'Color: {self.__color} | Puerta {self.__puerta} | {self.__temperatura}ºC' )


mi_frigo = Frigo("rojo")
mi_frigo.muestra_estado()

t = int(input("Temperatura: "))

mi_frigo.fija_temperatura(t)
mi_frigo.muestra_estado()
