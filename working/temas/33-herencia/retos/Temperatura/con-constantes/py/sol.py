class Grado:
    def __init__(self, grados):
        self._grados = round(float(grados), 2)

    def __str__(self):
        return f"{self._grados} {self.__class__.Symbol}"

    def grados(self):
        return self._grados

    def __add__(self, otro):
        if type(self) != type(otro):
            otro = otro.to(type(self))
        return type(self)(self._grados + otro.grados())


class Kelvin(Grado):
    Symbol = "K"

    def to(self, cls):
        if cls == Celsius:
            grados = self._grados - 273.15
        elif cls == Fahrenheit:
            grados = 9.0 / 5 * self._grados - 459.67
        else:
            grados = self._grados
        return cls(grados)


class Fahrenheit(Grado):
    Symbol = "ºF"

    def to(self, cls):
        if cls == Celsius:
            grados = 5.0 / 9 * (self._grados - 32)
        elif cls == Kelvin:
            grados = 5.0 / 9 * (self._grados + 459.67)
        else:
            grados = self._grados
        return cls(grados)


class Celsius(Grado):
    Symbol = "ºC"

    def to(self, cls):
        if cls == Fahrenheit:
            grados = 9.0 / 5 * self._grados + 32
        elif cls == Kelvin:
            grados = self._grados + 273.15
        else:
            grados = self._grados
        return cls(grados)
