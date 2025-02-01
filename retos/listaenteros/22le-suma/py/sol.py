class ListaEnteros:
    def __init__(self,lista):
        self.__lista = lista

    def suma(self):
        result = 0
        for n in self.__lista:
            result = result + n
        return result
