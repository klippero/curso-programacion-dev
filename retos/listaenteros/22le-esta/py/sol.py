class ListaEnteros:
    def __init__(self,lista):
        self.__lista = lista

    def esta(self,referencia):
        encontrado = False
        i = 0
        while i < len(self.__lista) and not encontrado:
            if self.__lista[i] == referencia:
                encontrado = True
            else:
                i = i + 1
        return encontrado
