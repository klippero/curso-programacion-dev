class Tablero
    def initialize(filas,columnas)
        @tablero = []
        filas.times do
            @tablero << []
            columnas.times do
                @tablero[@tablero.length-1] << ' '
            end
        end
        @tablero[3][3] = 'B'
    end

    def filas
        return @tablero.length
    end

    def columnas
        return @tablero[0].length
    end

    def linea
        result = "  +"
        self.columnas.times do
            result += '-+'
        end
        result += "\n"
    end

    def to_s
        result = "   "
        self.columnas.times do |i|
            result += "#{i} "
        end
        result += "\n"

        result += self.linea

        @tablero.length.times do |ifila|
            result += "#{ifila} |"
            @tablero[ifila].each do |casilla|
                if casilla == 'B'
                    result += " |"
                else
                    result += "#{casilla}|"
                end
            end
            result += "\n"
            result += self.linea
        end
        return result
    end

    def disparo(f,c)
        if @tablero[f][c] == ' '
            @tablero[f][c] = '•'
        elsif @tablero[f][c] == 'B'
            @tablero[f][c] = '▦'
        end
    end

    def juego
        opcion = ''
        while opcion != 'q'
            puts self
            print '[d] disparar [q] quit: '
            opcion = gets.chomp
            if opcion == 'd'
                print "fila,columna: "
                entrada = gets.chomp
                puts
                nums = entrada.split(",").map(&:to_i)
                disparo(nums[0],nums[1])
            end
        end
    end

    def posicionaBarco(size)

    end
end

t = Tablero.new(5,10)
t.juego
