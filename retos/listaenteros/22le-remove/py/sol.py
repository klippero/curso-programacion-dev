class ListaEnteros:
    def __init__(self,lista):
        self.__lista = lista

    def remove(self,referencia):
        result = []
        for n in self.__lista:
            if n != referencia:
                result.append(n)
        return result
