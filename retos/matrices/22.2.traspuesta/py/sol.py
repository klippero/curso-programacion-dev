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

    def rows(self):
        return len(self.__matrix)

    def columns(self):
        return len(self.__matrix[0])

    def traspuesta(self):
        result = []
        for rowI in range(self.rows()):
            for columnI in range(self.columns()):
                if len(result) <= columnI:
                    result.append([])
                result[columnI].append(self.__matrix[rowI][columnI])
        return Matriz(result)
