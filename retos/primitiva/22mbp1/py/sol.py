class Bombo:
    def __init__(self):
        self.__bolas = []
        for i in range(1,50):
            self.__bolas.append(i)

    def __str__(self):
        return str(self.__bolas)
