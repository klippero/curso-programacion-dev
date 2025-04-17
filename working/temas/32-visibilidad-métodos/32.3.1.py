class Cuenta:
    def __init__(self,aportacion):
        self.__saldo = float(aportacion)

    def retira(self,importe):
        comision = self.__comision(importe)
        self.__saldo = self.__saldo - importe - comision

    def __str__(self):
        return f"Saldo: {self.__saldo}€"

    def fusiona(self,otra):
        self.__saldo += otra.__saldo
        otra.__saldo = 0
    
    def __comision(self,importe):
        if importe < self.__saldo * 0.5:
            result = 0
        else:
            result = importe * 5 / 100
        return result


c1 = Cuenta(1000)
c2 = Cuenta(500)
c1.fusiona(c2)
print(f"C1 {c1} / C2 {c2}")