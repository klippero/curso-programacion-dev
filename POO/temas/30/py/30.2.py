class Frigo:
    DATA_FILE = "POO/temas/30/py/30.2.txt"

    def __init__(self,color="blanco"):
        self.__color = color
        self.__puerta = "cerrada"
        dataf = open(Frigo.DATA_FILE,"r")
        self.__temperatura = int(dataf.read())
        dataf.close()

    def __str__(self):
        return f"Color: {self.__color} | Puerta {self.__puerta} | {self.__temperatura}ºC"

    def fija_temperatura(self,nueva_temperatura):
        self.__temperatura = nueva_temperatura
        dataf = open(Frigo.DATA_FILE,"w")
            # machaca el fichero si existe
        dataf.write(str(self.__temperatura))
        dataf.close()


f = Frigo("rojo")
print(f)
f.fija_temperatura(13)
print(f)
