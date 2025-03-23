class Matriz
    def initialize(matrix)
        @matrix = matrix
    end

    def matrix
        return @matrix
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
end
