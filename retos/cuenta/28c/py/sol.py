class Cuenta:
    def __init__(self,cantidad=0):
        if cantidad > 0:
            self.__saldo = float(cantidad)
        else:
            self.__saldo = 0.0

    def __str__(self):
        return f"Saldo: {self.__saldo}€"

    def liquidarIntereses(self):
        self.__saldo = self.__saldo + self.__saldo / 100 * 10

    def ingreso(self,*cantidades):
        for cantidad in cantidades:
            if cantidad > 0:
                self.__saldo = self.__saldo + cantidad

    def reintegro(self,*cantidades):
        for cantidad in cantidades:
            if cantidad > 0 and cantidad <= self.__saldo:
                self.__saldo = self.__saldo - cantidad