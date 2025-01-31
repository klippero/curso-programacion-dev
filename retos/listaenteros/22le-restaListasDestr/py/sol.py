class Lista:
    def __init__(self,lista):
        self.__lista = lista

    def __str__(self):
        result = ""
        for item in self.__lista:
            result = result + f" {item}"
        return result

    def resta_destructivo(self,otra):
        i = 0
        while i < len(self.__lista):
            if self.__lista[i] in otra:
                del self.__lista[i]
            else:
                i = i + 1
