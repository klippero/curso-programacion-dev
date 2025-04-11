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

    def mediana(self):
        self.__numeros.sort()
        if len(self.__numeros) % 2 == 1:
            result = self.__numeros[len(self.__numeros)//2]
        else:
            result = ( self.__numeros[len(self.__numeros)//2-1] + self.__numeros[len(self.__numeros)//2] ) / 2
        return result
