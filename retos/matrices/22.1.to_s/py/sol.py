class Matriz:
    def __init__(self,matrix):
        self.__matrix = matrix

    def __str__(self):
        result = ""
        for row in self.__matrix:
            for item in row:
                result += f"{item}  "
            result += "\n"
        return result
