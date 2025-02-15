class Matrix
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
        result = clone_list
        @matrix.length.times do |i|
            @matrix[i].length.times do |j|
                result[i][j] += otra.matrix[i][j]
            end
        end
        return Matrix.new(result)
    end

    def - (otra)
        result = clone_list
        @matrix.length.times do |i|
            @matrix[i].length.times do |j|
                result[i][j] -= otra.matrix[i][j]
            end
        end
        return Matrix.new(result)
    end
end


m1 = Matrix.new([[0,2,3],[3,4,5]])
m2 = Matrix.new([[6,5,1],[6,5,1]])
m3 = m1 + m2

puts m1
puts "\n   +\n\n"
puts m2
puts "\n   =\n\n"
puts m3
puts "\n\n"

m4 = Matrix.new([[7,8,3],[3,4,5]])
m5 = Matrix.new([[6,5,1],[2,4,5]])
m6 = m4 - m5

puts m4
puts "\n   -\n\n"
puts m5
puts "\n   =\n\n"
puts m6
