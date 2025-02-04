class Cuadrado:
    def __init__(self,lado):
        self.__lado = lado

    def area(self):
        return self.__lado * self.__lado

    def lado(self):
        return self.__lado

    def agranda(self,ratio):
        self.__lado = self.__lado * ratio

    def __str__(self):
        result =""
        i = 1
        for _ in range(self.__lado):
            for _ in range(self.__lado):
                result = result + "*"
            result = result + "\n"
        return result

    def __eq__(self,otro):
        return self.__lado == otro.lado()
