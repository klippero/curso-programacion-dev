class Lista:
    def __init__(self,array):
        self.__array = array

    def __str__(self):
        result = ""
        for item in self.__array:
            result = result + f" {item}"
        return result

    def __add__(self,array):
        result = []
        for item in self.__array:
            result.append(item)

        for item in array:
            result.append(item)
        return Lista(result)
