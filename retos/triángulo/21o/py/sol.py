class Triangulo:
    def __init__(self,b):
        self.__base = b

    def __str__(self):
        result = ""
        for i in range(self.__base):
            for _ in range(i+1):
                result = result + "*"
            result = result + "\n"
        return result
