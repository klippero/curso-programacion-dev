class Cuenta:
    def __init__( self, titular, aportacion ):
        self.__titular = titular
        self.__saldo = float(aportacion)

    def __str__(self):
        return f"<<<< Titular: {self.__titular} Saldo: {self.__saldo:.2f}€ >>>>"
