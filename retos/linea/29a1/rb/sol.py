class Linea:
    def __init__(self, longitud, char='-'):
        self.longitud = longitud
        self.char = char

    def __str__(self):
        return self.char * self.longitud

    def __add__(self, otra):
        return Linea(self.longitud + otra.longitud, self.char)

    def resize(self, ratio):
        self.longitud = int(self.longitud * ratio)


class GraficoBarras:
    def __init__(self, *longitudes, char='-', show_num=True):
        self.lineas = [Linea(longitud, char) for longitud in longitudes]
        self.show_num = show_num

    def __str__(self):
        result = ""
        for linea in self.lineas:
            result += str(linea)
            if self.show_num:
                result += f" {linea.longitud}"
            result += "\n"
        return result


# Crear y mostrar el gráfico
grafico = GraficoBarras(23, 17, 4, 55, 51, 45, 15, char='.', show_num=True)
print(grafico)
