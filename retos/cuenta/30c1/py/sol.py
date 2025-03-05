class Cuenta:
    DATA_FILE = "retos/cuenta/30c1/data.txt"

    def __init__(self):
        dataf = open(Cuenta.DATA_FILE,"r")
        self.__saldo = float(dataf.read())
        dataf.close()

    def __str__(self):
        return f"Saldo: {self.__saldo}€"
