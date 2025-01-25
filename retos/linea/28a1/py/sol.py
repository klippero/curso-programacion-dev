class Linea:
    def __init__(self,longitud):
        self.__longitud = longitud

    def __str__(self):
        result = ''
        i = 1
        while i <= self.__longitud:
            result = result + '-'
            i = i+1
        return result


class GraficoBarras:
    def __init__(self,*longitudes):
        self.__lineas = []
        for longitud in longitudes:
            self.__lineas.append(Linea(longitud))

    def __str__(self):
        result = ""
        for linea in self.__lineas:
            result += str(linea) + "\n"
        return result
