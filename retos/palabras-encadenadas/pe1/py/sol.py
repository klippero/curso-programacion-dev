class Palabra:
    def __init__(self,word):
        self.__word = word

    def encadenadaCon(self,otra):
        return self.__word[-1] == otra[0]

    def __str__(self):
        return self.__word
