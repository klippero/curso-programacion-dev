class Celsius:
    def __init__(self,grados):
        self.__grados = float(grados)

    def __str__(self):
        return f"{self.__grados:.2f} ºC"

    def to_Fahrenheit(self):
        return Fahrenheit( self.__grados * 9/5 + 32 )

    def to_Kelvin(self):
        return Kelvin( self.__grados + 273.15 )


class Fahrenheit:
    def __init__(self,grados):
        self.__grados = float(grados)

    def __str__(self):
        return f"{self.__grados:.2f} ºF"

    def to_Celsius(self):
        return Celsius( ( self.__grados - 32 ) * 5/9 )

    def to_Kelvin(self):
        return Kelvin( ( self.__grados - 32 ) * 5/9 + 273.15 )


class Kelvin:
    def __init__(self,grados):
        self.__grados = float(grados)

    def __str__(self):
        return f"{self.__grados:.2f} K"

    def to_Celsius(self):
        return Celsius( self.__grados - 273.15 )

    def to_Fahrenheit(self):
        return Fahrenheit( ( self.__grados - 273.15 ) * 9/5 + 32 )