class Lista:
    def __init__(self,array):
        self.__array = array

    def __str__(self):
        result = ""
        for item in self.__array:
            result = result + f" {item}"
        return result

    def suma(self,array):
        result = []
        for item in self.__array:
            result.append(item)

        for item in array:
            result.append(item)
        return Lista(result)

    def suma_destructivo(self,array):
        for item in array:
            self.__array.append(item)
