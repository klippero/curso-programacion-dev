class Cuenta:
    DATA_FILE = "retos/cuenta/30c2/data.txt"

    def __init__(self):
        dataf = open(Cuenta.DATA_FILE,"r")
        self.__saldo = float(dataf.read())
        dataf.close()

    def __str__(self):
        return f"Saldo: {self.__saldo}€"

    def ingreso(self,cantidad):
        if cantidad > 0:
            self.__saldo = self.__saldo + cantidad
            self.__saldo = round(self.__saldo,2)
        self.save()

    def reintegro(self,cantidad):
        if cantidad > 0 and cantidad <= self.__saldo:
            self.__saldo = self.__saldo - cantidad
            self.__saldo = round(self.__saldo,2)
        self.save()

    def save(self):
        dataf = open(Cuenta.DATA_FILE,"w")
        dataf.write(str(self.__saldo))
        dataf.close()
