class MiDiccionario:
    def __init__(self,hash):
        self.__hash = hash

    def count(self,referencia):
        result = 0
        for value in self.__hash.values():
            if value == referencia:
                  result += 1
        return result

    def mayor(self):
        mayor = list(self.__hash.keys())[0]
        for key,value in self.__hash.items():
            if self.__hash[mayor] < value:
                mayor = key
        return mayor
