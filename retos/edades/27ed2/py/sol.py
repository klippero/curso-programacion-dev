class MiDiccionario:
    def __init__(self,hash):
        self.__hash = hash

    def strSortedKeys(self):
        result = ""
        for key in sorted(self.__hash.keys()):
            result += f"{key} "
        result = result[:-1]
        return result