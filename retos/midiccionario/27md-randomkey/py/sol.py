import random


class MiDiccionario:
    def __init__(self,hash):
        self.__hash = hash

    def randomKey(self):
        k = self.keys()
        return k[random.randrange(len(k))]

    def keys(self):
        result = []
        for key in self.__hash:    # se puede añadir .keys():
            result.append(key)
        return result
