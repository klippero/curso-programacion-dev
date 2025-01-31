class ListaEnteros:
    def __init__(self,lista):
        self.__lista = lista

    def nPares(self):
        result = 0
        for n in self.__lista:
            if n %2 == 0:
                result = result + 1
        return result
