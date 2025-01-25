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
    
    def longitud(self):
        return self.__longitud


class GraficoBarras:
    def __init__(self,showNum,*longitudes):
        self.__lineas = []
        for longitud in longitudes:
            self.__lineas.append(Linea(longitud))
        self.__showNum = showNum

    def __str__(self):
        result = ""
        for linea in self.__lineas:
            result += str(linea)
            if self.__showNum:
                result += f" {linea.longitud()}"
            result += "\n"
        return result
