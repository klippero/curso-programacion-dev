class ListaEnteros:
    def __init__(self,lista):
        self.__lista = lista

    def smallest(self):
        if len(self.__lista) < 1:
            result = -1
        else:
            result = self.__lista[0]
            for n in self.__lista[1:]:
                if n < result:
                    result = n
        return result
