from pathlib import Path


class Cuenta:
    DATA_FILE = "retos/cuenta/30c4/data.txt"
    LOG_FILE = "retos/cuenta/30c4/log.txt"

    def __init__(self):
        if Path(Cuenta.DATA_FILE).exists():
            dataf = open(Cuenta.DATA_FILE,"r")
            self.__saldo = float(dataf.read())
            dataf.close()
        else:
            self.__saldo = 0
        self.log()

    def __str__(self):
        return f"Saldo: {self.__saldo}€"

    def ingreso(self,cantidad):
        if cantidad > 0:
            self.__saldo = self.__saldo + cantidad
            self.__saldo = round(self.__saldo,2)
        self.save()
        self.log(cantidad)

    def reintegro(self,cantidad):
        if cantidad > 0 and cantidad <= self.__saldo:
            self.__saldo = self.__saldo - cantidad
            self.__saldo = round(self.__saldo,2)
        self.save()
        self.log(-cantidad)

    def save(self):
        dataf = open(Cuenta.DATA_FILE,"w")
        dataf.write(str(self.__saldo))
        dataf.close()

    def log(self,cantidad=0):
        msg = ""
        if cantidad > 0:
            msg = "+"
        if cantidad != 0:
            msg += f"{cantidad}€ "
        msg += f"> {self.__saldo}€"
        logf = open(Cuenta.LOG_FILE,"a")
        logf.write(msg+"\n")
        logf.close()
