class ListaEnteros:
    def __init__(self,lista):
        self.__lista = lista

    def mayor(self):
        result = -1
        for n in self.__lista:
            if result == -1 or n > result:
                result = n
        return result

    def posMayor(self):
        result = -1
        for i in range(len(self.__lista)):
            if result == -1 or self.__lista[i] > self.__lista[result]:
                result = i
        return result
