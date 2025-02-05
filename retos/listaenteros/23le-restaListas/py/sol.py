class Lista:
    def __init__(self,lista):
        self.__lista = lista

    def __str__(self):
        result = ""
        for item in self.__lista:
            result = result + f" {item}"
        return result

    def __sub__(self,otra):
        result = []
        for item in self.__lista:
            if not item in otra:
                result.append(item)
        return Lista(result)
