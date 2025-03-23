class Matriz
    def initialize(matrix)
        @matrix = matrix
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
end
