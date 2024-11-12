class Cuenta:
    def __init__(self,deposito_inicial):
        self.__saldo = 100
        print( f"se abre la cuenta con {self.__saldo}€" )

    def muestraSaldo(self):
        print( f"Saldo: {self.__saldo}€" )

    def ingreso(self,cantidad):
        self.__saldo = self.__saldo + cantidad
        print( f"se ingresan {cantidad}€ y queda un saldo de {self.__saldo}€" )

    def reintegro(self,cantidad):
        self.__saldo = self.__saldo - cantidad
        print( f"se retiran {cantidad}€ y queda un saldo de {self.__saldo}€" )


mi_cuenta = Cuenta(100)
mi_cuenta.ingreso(25)
mi_cuenta.reintegro(80)
mi_cuenta.muestraSaldo()
