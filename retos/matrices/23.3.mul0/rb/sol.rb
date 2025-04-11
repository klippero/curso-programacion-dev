class Matriz
    def initialize(matrix)
        @matrix = matrix
    end

    def to_s
        result = ""
        @matrix.each do |row|
            row.each do |item|
                result = result + "#{item}  "
            end
            result = result + "\n"
        end
        if result == ""
            result = "[ ]"
        end
        return result
    end

    def rows
        return @matrix.length
    end

    def columns
        return @matrix[0].length
    end

    def * (otra)
        result = []
        if columns == otra.rows
            self.rows.times do |row|
                row_sol = []
                otra.columns.times do |column|
                    cell = "#{row},#{column}"
                    row_sol << cell
                end
                result << row_sol
            end
        end
        return Matriz.new(result)
    end
end
