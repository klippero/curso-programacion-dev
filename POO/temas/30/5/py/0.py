from pathlib import Path

class Frigo:
    DATA_FILE = "POO/temas/30/5/30.5.txt"
    REG_FILE = "POO/temas/30/5/30.5.reg.txt"

    def __init__(self,color="blanco"):
        self.__color = color
        self.__puerta = "cerrada"
        if Path(Frigo.DATA_FILE).exists():
            dataf = open(Frigo.DATA_FILE,"r")
            data = dataf.read().split(",")
            dataf.close
            self.__temperatura = int(data[0])
            self.__color = data[1]
            self.__puerta = data[2]
        else:
            self.__temperatura = 0
            self.__color = "blanco"
            self.__puerta = "cerrada"

    def __str__(self):
        return f"Color: {self.__color} | Puerta {self.__puerta} | {self.__temperatura}ºC"

    def fija_temperatura(self,nueva_temperatura):
        self.__temperatura = nueva_temperatura
        dataf = open(Frigo.DATA_FILE,"w")
        dataf.write(f"{self.__temperatura},{self.__color},{self.__puerta}")
        dataf.close()

        registrof = open(Frigo.REG_FILE,"a")
        registrof.write(str(self.__temperatura)+"\n")
        registrof.close

f = Frigo()
print(f)
f.fija_temperatura(13)
f.fija_temperatura(17)
print(f)
