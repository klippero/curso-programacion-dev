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
        return result
    end
end
