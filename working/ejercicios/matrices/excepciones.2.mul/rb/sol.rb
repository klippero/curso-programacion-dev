class Matriz
    def initialize(matrix)
        @matrix = matrix
    end

    def matrix
        return @matrix
    end

    def rows
        return @matrix.length
    end

    def columns
        return @matrix[0].length
    end

    def to_s
        result = ""
        @matrix.each do |row|
            row.each do |item|
                result += "#{item}  "
            end
            result += "\n"
        end
        return result
    end

    def clone_list
        result = []
        @matrix.each do |row|
            row_result = []
            row.each do |item|
                row_result << item
            end
            result << row_result
        end
        return result
    end

    def + (otra)
        if ! (rows == otra.rows && columns == otra.columns)
            raise ArgumentError.new("una matriz de #{rows}x#{columns} no se puede sumar a una de #{otra.rows}x#{otra.columns}")
        end

        result = clone_list
        @matrix.length.times do |i|
            @matrix[i].length.times do |j|
                result[i][j] += otra.matrix[i][j]
            end
        end
        return Matriz.new(result)
    end

    def - (otra)
        result = clone_list
        @matrix.length.times do |i|
            @matrix[i].length.times do |j|
                result[i][j] -= otra.matrix[i][j]
            end
        end
        return Matriz.new(result)
    end

    def ** (otra)
        result = []
        self.rows.times do |row|
            new_row = []
            otra.columns.times do |column|
                new_row << 0
            end
            result << new_row
        end

        self.rows.times do |row|
            otra.columns.times do |column|
                self.columns.times do |i|
                    result[row][column] += @matrix[row][i] * otra.matrix[i][column]
                end
            end
        end
        return Matriz.new(result)
    end

    def *(otra)
        if ! (rows == otra.columns && columns == otra.rows)
            raise ArgumentError.new("una matriz de #{rows}x#{columns} no se puede multiplicar por una de #{otra.rows}x#{otra.columns}")
        end

        result = []
        self.rows.times do |row|
            row_sol = []
            otra.columns.times do |column|
                cell = 0
                self.columns.times do |i|
                    cell += @matrix[row][i] * otra.matrix[i][column]
                end
                row_sol << cell
            end
            result << row_sol
        end
        return Matriz.new(result)
    end
end
