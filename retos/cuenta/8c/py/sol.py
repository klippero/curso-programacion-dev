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