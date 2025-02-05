class MiDiccionario:
    def __init__(self,hash):
        self.__hash = hash

    def count(self,referencia):
        result = 0
        for value in self.__hash.values():
            if value == referencia:
                  result += 1
        return result
