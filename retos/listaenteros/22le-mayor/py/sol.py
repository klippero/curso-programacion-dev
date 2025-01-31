class ListaEnteros:
    def __init__(self,lista):
        self.__lista = lista

    def mayor(self):
        result = self.__lista[0]
        for n in self.__lista:
            if n > result:
                result = n
        return result
