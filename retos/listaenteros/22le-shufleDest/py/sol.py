import random


class Lista:
    def __init__(self,lista):
        self.__lista = lista

    def __str__(self):
        result = ""
        for item in self.__lista:
            result = result + f" {item}"
        return result

    def shuffle_destructivo(self):
        for i in range(len(self.__lista)):
            j = random.randrange(len(self.__lista))
            aux = self.__lista[j]
            self.__lista[j] = self.__lista[i]
            self.__lista[i] = aux
