class MiDiccionario:
    def __init__(self,hash):
        self.__hash = hash

    def values(self):
        result = []
        for value in self.__hash.values():
            if not value in result:
                result.append(value)
        return result
