class Celsius:
    def __init__(self,grados):
        self.__grados = grados

    def to_Fahrenheit(self):
        return self.__grados * 9/5 + 32