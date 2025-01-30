class Rectangulo:
    def __init__(self,base,altura):
        self.__base = base
        self.__altura = altura

    def __str__(self):
        result = ""
        for _ in range(self.__altura):
            for _ in range(self.__base):
                result = result + "*"
            result = result + "\n"
        return result
