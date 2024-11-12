class Cuenta:
    def __init__(self):
        self.__saldo = 100
 
    def muestraSaldo(self):
        print( f'Saldo: {self.__saldo}€' )

    def liquidarIntereses(self):
        self.__saldo = self.__saldo * 1.1

    def ingreso(self,cantidad):
        self.__saldo = self.__saldo + cantidad

    def reintegro(self,cantidad ):
        self.__saldo = self.__saldo - cantidad


mi_cuenta = Cuenta()
mi_cuenta.muestraSaldo()
mi_cuenta.ingreso(25)
mi_cuenta.muestraSaldo()
mi_cuenta.reintegro(80)
mi_cuenta.muestraSaldo()
