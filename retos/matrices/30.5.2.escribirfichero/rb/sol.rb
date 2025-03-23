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

    def readFile(fileName)
        @matrix = []
        if File.file?(fileName)
            dataf = File.open(fileName)
            data = dataf.read.split(",")
            dataf.close

            i = 2
            data[0].to_i.times do
                @matrix << []
                data[1].to_i.times do
                    @matrix[@matrix.length-1] << data[i].to_i
                    i = i + 1
                end
            end
        end
    end

    def writeFile(fileName)
        to_write = ""
        to_write += "#{rows},#{columns}"

        @matrix.each do |row|
            row.each do |item|
                to_write += ",#{item}"
            end
        end

        dataf = File.open(fileName,"w")
        dataf.print to_write
        dataf.close
    end
end
