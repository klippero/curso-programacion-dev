class UnidadMétrica:
    def __init__(self,n=0):
        self._n = float(n)

    def __str__(self):
        return f"{self._n} {self.__class__.Sym}"

    def to(self,unidad):
        return unidad(self._n * 10 ** (self.__class__.Exp - unidad.Exp))


class Decímetro(UnidadMétrica):
    Exp = -1
    Sym = "dm"


class Centímetro(UnidadMétrica):
    Exp = -2
    Sym = "cm"


class Milímetro(UnidadMétrica):
    Exp = -3
    Sym = "mm"


class Metro(UnidadMétrica):
    Exp = 0
    Sym = "m"


class Decámetro(UnidadMétrica):
    Exp = 1
    Sym = "dam"


class Hectómetro(UnidadMétrica):
    Exp = 2
    Sym = "hm"


class Kilometro(UnidadMétrica):
    Exp = 3
    Sym = "km"
