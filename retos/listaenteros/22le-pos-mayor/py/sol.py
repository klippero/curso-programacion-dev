class ListaEnteros:
    def __init__(self,lista):
        self.__lista = lista

    def posMayor(self):
        if len(self.__lista) < 1:
            result = -1
        else:
            result = 0
            for i in range(1,len(self.__lista)):
                if self.__lista[i] > self.__lista[result]:
                    result = i
        return result
