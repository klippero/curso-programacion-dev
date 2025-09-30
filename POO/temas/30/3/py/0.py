class Frigo:
    DATA_FILE = "POO/temas/30/3/30.3.txt"
    REG_FILE = "POO/temas/30/3/30.3.reg.txt"

    def __init__(self,color="blanco"):
        self.__color = color
        self.__puerta = "cerrada"
        dataf = open(Frigo.DATA_FILE,"r")
        self.__temperatura = int(dataf.read())
        dataf.close()

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
f.fija_temperatura(3)
f.fija_temperatura(7)
f.fija_temperatura(10)
f.fija_temperatura(18)
print(f)
