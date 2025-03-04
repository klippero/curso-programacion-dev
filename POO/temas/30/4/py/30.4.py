from pathlib import Path

class Frigo:
    DATA_FILE = "POO/temas/30/4/30.4.txt"
    REG_FILE = "POO/temas/30/4/30.4.reg.txt"

    def __init__(self,color="blanco"):
        self.__color = color
        self.__puerta = "cerrada"
        if Path(Frigo.DATA_FILE).exists():
            dataf = open(Frigo.DATA_FILE,"r")
            self.__temperatura = int(dataf.read())
            dataf.close()
        else:
            self.__temperatura = 0

    def __str__(self):
        return f"Color: {self.__color} | Puerta" + \
            f"{self.__puerta} | {self.__temperatura}ºC"

    def fija_temperatura(self,nueva_temperatura):
        self.__temperatura = nueva_temperatura
        dataf = open(Frigo.DATA_FILE,"w")
        dataf.write(str(self.__temperatura))
        dataf.close()

        registrof = open(Frigo.REG_FILE,"a")
            # si existe, añade al final
        registrof.write(str(self.__temperatura)+"\n")
        registrof.close


f = Frigo("rojo")
print(f)
f.fija_temperatura(7)
f.fija_temperatura(10)
f.fija_temperatura(18)
print(f)