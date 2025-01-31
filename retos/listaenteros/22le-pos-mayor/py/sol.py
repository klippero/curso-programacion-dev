class ListaEnteros:
    def __init__(self,lista):
        self.__lista = lista

    def posMayor(self):
        result = 0
        i = 1
        while i < len(self.__lista):
            if self.__lista[i] > self.__lista[result]:
                result = i
            i = i + 1
        return result
