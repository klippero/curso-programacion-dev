class Lista:
    def __init__(self, array):
        self.__array = array

    def __str__(self):
        return " ".join(map(str, self.__array))

    def array(self):
        return self.__array

    def __add__(self, otra):
        if isinstance(otra, Lista):
            nueva_lista = self.__array + otra.obtener_array()  # Si es Lista, accede a su array interno
        elif isinstance(otra, list):
            nueva_lista = self.__array + otra
        else:
            raise TypeError("Operación no soportada para la suma con Lista")

        return Lista(nueva_lista)  # Devuelve una nueva instancia de Lista
