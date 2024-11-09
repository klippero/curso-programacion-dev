class FrigorificoCombi:
    def __init__(self,temperatura=20):
        self.__puerta_frigo = "cerrada"
        self.__puerta_congelador = "cerrada"
        self.__temperatura_frigo = temperatura
        self.__temperatura_congelador = temperatura

    def abre_frigo(self):
        self.__puerta_frigo = "abierta"

    def cierra_frigo(self):
        self.__puerta_frigo = "cerrada"

    def abre_congelador(self):
        self.__puerta_congelador = "abierta"

    def cierra_congelador(self):
        self.__puerta_congelador = "cerrada"

    def muestra_estado(self):
        print( f"Frigo {self.__temperatura_frigo}ºC {self.__puerta_frigo} | congelador {self.__temperatura_congelador}ºC {self.__puerta_congelador}" )

    def fija_temperatura_frigo(self,nueva_temperatura=7):
        self.__temperatura_frigo = nueva_temperatura

    def fija_temperatura_congelador(self,nueva_temperatura=-18):
        self.__temperatura_congelador = nueva_temperatura


mi_frigo = FrigorificoCombi(15)
mi_frigo.muestra_estado()

mi_frigo = FrigorificoCombi()
mi_frigo.muestra_estado()

mi_frigo.fija_temperatura_frigo()
mi_frigo.muestra_estado()

mi_frigo.fija_temperatura_frigo(6)
mi_frigo.muestra_estado()

mi_frigo.fija_temperatura_congelador()
mi_frigo.muestra_estado()

mi_frigo.fija_temperatura_congelador(-17)
mi_frigo.muestra_estado()
