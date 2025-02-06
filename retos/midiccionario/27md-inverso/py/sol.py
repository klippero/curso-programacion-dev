class MiDiccionario:
    def __init__(self,hash):
        self.__hash = hash

    def inverso(self):
        result = {}
        for key,value in self.__hash.items():
            if not value in result:
                result[value] = []
            result[value].append(key)
        return result
