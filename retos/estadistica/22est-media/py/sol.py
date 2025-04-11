class ListaEnteros:
    def __init__(self,lista):
        self.__numeros = lista

    def suma(self):
        result = 0
        for item in self.__numeros:
            result = result + item
        return result

    def media(self):
        return self.suma() / float(len(self.__numeros))
