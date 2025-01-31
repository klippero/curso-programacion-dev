class ListaEnteros:
    def __init__(self,lista):
        self.__lista = lista

    def removeDuplicates(self):
        result = []
        for n in self.__lista:
            if not ListaEnteros(result).esta(n):
                result.append(n)
        return result

    def esta(self,referencia):
        encontrado = False
        i = 0
        while i < len(self.__lista) and not encontrado:
            encontrado = self.__lista[i] == referencia
            i = i + 1
        return encontrado
