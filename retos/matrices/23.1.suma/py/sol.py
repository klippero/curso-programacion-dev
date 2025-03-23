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
    
    def clone_list(self):
        result = []
        for row in self.__matrix:
            row_result = []
            for item in row:
                row_result.append(item)
            result.append(row_result)
        return result

    def __add__(self,otra):
        result = self.clone_list()
        for i in range(len(self.__matrix)):
            for j in range(len(self.__matrix[0])):
                result[i][j] += otra.__matrix[i][j]
        return Matriz(result)
