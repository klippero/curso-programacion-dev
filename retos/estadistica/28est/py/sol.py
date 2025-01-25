class ListaEnteros:
    def __init__(self,*lista):
        self.__numeros = lista

    def suma(self):
        result = 0
        for item in self.__numeros:
            result += item
        return result

    def media(self):
        return self.suma() / float(len(self.__numeros))

    def mediana(self):
        # self.__numeros es una tupla que en python son inmutables
        # sorted sobre una tupla devuelve una lista ya ordenada
        # también podíamos haber convertido a lista en el constructor
        # self.__numeros = list(lista)
        self.__numeros = sorted(self.__numeros)
        if len(self.__numeros) % 2 == 1:
            result = self.__numeros[len(self.__numeros)//2]
        else:
            result = ( self.__numeros[len(self.__numeros)//2-1] + self.__numeros[len(self.__numeros)//2] ) / 2
        return result

    def moda(self):
        apariciones = {}
        
        for item in self.__numeros:
            if item in apariciones:
                apariciones[item] += 1
            else:
                apariciones[item] = 1

        result = []
        result.append(list(apariciones.keys())[0])
        for n in list(apariciones.keys())[1:]:
            if apariciones[n] > apariciones[result[0]]:
                result = []
                result.append(n)
            elif apariciones[n] == apariciones[result[0]]:
                result.append(n)
        return result

    def __str__(self):
        result = ''
        for numero in self.__numeros:
            result += str(numero) + ', '
        result = result[:-2]
        return result
