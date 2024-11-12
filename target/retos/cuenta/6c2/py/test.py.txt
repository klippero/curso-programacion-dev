class Cuenta:
    def __init__(self):
        self.__saldo = 100
 
    def muestraSaldo(self):
        print( f'Saldo: {self.__saldo}€' )

    def liquidarIntereses(self):
        self.__saldo = self.__saldo * 1.1

    def retirarFondos(self):
        self.__saldo = 0

mi_cuenta = Cuenta()
mi_cuenta.muestraSaldo()
mi_cuenta.liquidarIntereses()
mi_cuenta.muestraSaldo()
mi_cuenta.retirarFondos()
mi_cuenta.muestraSaldo()
