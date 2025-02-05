class MiDiccionario:
    def __init__(self,hash):
        self.__hash = hash

    def reverse(self):
        result = {}
        for key,value in self.__hash.items():
            if not value in result:
                result[value] = 0
            result[value] += 1
        return result
