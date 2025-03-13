import random


class Lista:
    def __init__(self,lista):
        self.__lista = lista

    def __str__(self):
        return str(self.__lista)

    def clone(self):
        result = []
        for item in self.__lista:
            result.append(item)
        return result

    def shuffle(self):
        result = self.clone()
        for i in range(len(result)):
            j = random.randrange(len(result))
            aux = result[j]
            result[j] = result[i]
            result[i] = aux
        return result
