class Frigo:
    DATA_FILE = "POO/temas/30/1/30.1.txt"

    def __init__(self,color="blanco"):
        self.__color = color
        self.__puerta = "cerrada"
        dataf = open(Frigo.DATA_FILE,"r")
            # error si no existe
        self.__temperatura = int(dataf.read())
        dataf.close()

    def __str__(self):
        return f"Color: {self.__color} | Puerta {self.__puerta} | {self.__temperatura}ºC"


f = Frigo("rojo")
print(f)