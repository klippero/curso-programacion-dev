class FrigorificoCombi:
    def __init__(self):
        self.__puerta_frigo = "cerrada"
        self.__puerta_congelador = "cerrada"

    def abre_frigo(self):
        self.__puerta_frigo = "abierta"

    def cierra_frigo(self):
        self.__puerta_frigo = "cerrada"

    def abre_congelador(self):
        self.__puerta_congelador = "abierta"

    def cierra_congelador(self):
        self.__puerta_congelador = "cerrada"

    def muestra_estado(self):
        print(f"Puerta frigo {self.__puerta_frigo} | puerta congelador {self.__puerta_congelador}")


mi_frigo = FrigorificoCombi()
mi_frigo.muestra_estado()
mi_frigo.abre_frigo()
mi_frigo.muestra_estado()
mi_frigo.cierra_frigo()
mi_frigo.muestra_estado()
mi_frigo.abre_congelador()
mi_frigo.muestra_estado()
mi_frigo.cierra_congelador()
mi_frigo.muestra_estado()
