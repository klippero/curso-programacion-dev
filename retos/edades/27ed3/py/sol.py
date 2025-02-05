class MiDiccionario:
    def __init__(self,hash):
        self.__hash = hash

    def strValues(self):
        result = ""
        for value in self.__hash.values():
            result += f"{value} "
        result = result[:-1]
        return result