class Cuenta:
    def __init__( self, titular, aportacion ):
        self.__titular = titular
        self.__saldo = float(aportacion)

    def __str__(self):
        return f"<<<< Titular: {self.__titular} Saldo: {self.__saldo:.2f}€ >>>>"

    def ingreso( self,cantidad ):
        self.__saldo = self.__saldo + cantidad

    def calcula_intereses(self):
        return self.__saldo * 10 / 100

    def liquida_intereses(self):
        self.__saldo = self.__saldo + self.calcula_intereses()

    def reintegro( self,cantidad ):
        self.__saldo = self.__saldo - cantidad
