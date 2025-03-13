class ListaEnteros:
    def __init__(self,lista):
        self.__lista = lista

    def hayPar(self):
        encontrado = False
        i = 0
        while i < len(self.__lista) and not encontrado:
            if self.__lista[i] % 2 == 0:
                encontrado = True
            else:
                i = i + 1
        return encontrado
