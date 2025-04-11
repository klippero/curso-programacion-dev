class Matriz:
    def __init__(self,matrix):
        self.__matrix = matrix

    def __str__(self):
        result = ""
        for row in self.__matrix:
            for item in row:
                result = result + f"{item}  "
            result = result + "\n"
        if result == "":
            result = "[ ]"
        return result
    
    def rows(self):
        return len(self.__matrix)

    def columns(self):
        return len(self.__matrix[0])

    def __mul__(self,otra):
        result = []
        if self.columns() == otra.rows():
            for row in range(self.rows()): 
                row_sol = []
                for column in range(otra.columns()):
                    cell = f"{row},{column}"
                    row_sol.append(cell)
                result.append(row_sol)
        return Matriz(result)
