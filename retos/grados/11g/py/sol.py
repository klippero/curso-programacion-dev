class Celsius:
    def __init__(self,grados):
        self.__grados = grados

    def to_Fahrenheit(self):
        return self.__grados * 9/5 + 32


c = float(input("ºC: "))
grados_c = Celsius(c)

print( f"{c}ºC = {grados_c.to_Fahrenheit()}ºF" )
