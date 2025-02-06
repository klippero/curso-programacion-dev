class MiDiccionario:
    def __init__(self,hash):
        self.__hash = hash

    def keys(self):
        result = []
        for key in self.__hash:    # se puede añadir .keys():
            result.append(key)
        return result
