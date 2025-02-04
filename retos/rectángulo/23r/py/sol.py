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
    
    def base(self):
        return self.__base
    
    def altura(self):
        return self.__altura

    def area(self):
        return self.__base * self.__altura

    def __eq__(self,otro):
        return self.__base == otro.base() and self.__altura == otro.altura()

    def __gt__(self,otro):
        return self.area() > otro.area()

    def __lt__(self,otro):
        return self.area() < otro.area()

    def __ge__(self,otro):
        return self.area() >= otro.area()

    def __le__(self,otro):
        return self.area() <= otro.area()

    def __add__(self,otro):
        return Rectangulo( self.__base + otro.base(), self.__altura + otro.altura() )

    def __lshift__(self,otro):
        self.__base = self.__base + otro.base()
        self.__altura = self.__altura + otro.altura()
