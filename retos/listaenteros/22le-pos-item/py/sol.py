class ListaEnteros:
    def __init__(self,lista):
        self.__lista = lista

    def posItem(self,item):
        encontrado = False
        i = 0
        while i < len(self.__lista) and not encontrado:
            if self.__lista[i] == item:
                encontrado = True
            else:
                i = i + 1
        if not encontrado:
            i = -1
        return i
