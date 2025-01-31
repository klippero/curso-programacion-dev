class ListaEnteros:
    def __init__(self,lista):
        self.__lista = lista

    def contar(self,referencia):
        result = 0
        for n in self.__lista:
            if n == referencia:
                result = result + 1
        return result
