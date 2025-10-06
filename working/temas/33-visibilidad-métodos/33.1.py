class Cuenta:
    def __init__(self,aportacion):
        self.__saldo = float(aportacion)

    def retira(self,importe):
        comision = self.comision(importe)
        self.__saldo = self.__saldo - importe - comision

    def __str__(self):
        return f"Saldo: {self.__saldo}€"

    def comision(self,importe):
        if importe < self.__saldo * 0.5:
            result = 0
        else:
            result = importe * 5 / 100
        return result


c = Cuenta(1000)
print(c.comision(800))
c.retira(800)
print(c)
