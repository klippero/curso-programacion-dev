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

    def rows
        return @matrix.length
    end

    def columns
        return @matrix[0].length
    end

    def traspuesta
        result = []
        self.rows.times do |rowI|
            self.columns.times do |columnI|
                if result.length <= columnI
                    result << []
                end
                result[columnI] << @matrix[rowI][columnI]
            end
        end
        return Matriz.new(result)
    end
end
