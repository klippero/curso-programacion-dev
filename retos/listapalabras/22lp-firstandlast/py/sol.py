class ListaPalabras:
    def __init__(self,lista):
        self.__lista = lista

    def first_and_last(self):
        result = 0
        for word in self.__lista:
            if len(word) >= 2 and word[0] == word[-1]:
                result = result + 1
        return result
