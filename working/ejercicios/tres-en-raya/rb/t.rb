class Jugador
    def initialize(char)
        @char = char
        @fichas = []
    end

    def char
        return @char
    end
end


class TresEnRaya
    Size = 3
    Nada = ' '

    def initialize(jugadores)
        @tablero = []
        Size.times do
            @tablero.append([])
            Size.times do
                @tablero[-1].append(Nada)
            end
        end

        @jugadores = []
        jugadores.each do |char|
            @jugadores.append(Jugador.new(char))
        end
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
            result = result + '---+'
        end
        result = result + "\n"
        return result
    end

    def to_s
        result = "   "
        self.columnas.times do |i|
            result = result + " #{i}  "
        end
        result = result + "\n"

        result = result + self.linea

        @tablero.length.times do |ifila|
            result = result + "#{ifila} |"
            @tablero[ifila].each do |casilla|
                result = result + " #{casilla} |"
            end
            result = result + "\n"
            result = result + self.linea
        end
        result = result + "\n"
        return result
    end

    def mark(player,fila,col)
        if @tablero[fila][col] == Nada
            @tablero[fila][col] = @jugadores[player].char
            result = true
        else
            result = false
        end
        return result
    end

    def findJugadorChar(char)
        encontrado = false
        i = 0
        while i < @jugadores.length && !encontrado
            if @jugadores[i].char == char
                encontrado = true
            else
                i = i + 1
            end
        end
        return i
    end

    def ganadorFila(fila)
        result = -1
        if @tablero[fila][0] != Nada
            result = findJugadorChar(@tablero[fila][0])

            encontrado = false
            i = 1
            while i < @tablero[fila].length && !encontrado
                if @tablero[fila][i] != @jugadores[result].char
                    encontrado = true
                else
                    i = i + 1
                end
            end

            if encontrado
                result = -1
            end
        end
        return result
    end

    def ganadorColumna(col)
        result = -1
        if @tablero[0][col] != Nada
            result = findJugadorChar(@tablero[0][col])

            encontrado = false
            i = 1
            while i < @tablero.length && !encontrado
                if @tablero[i][col] != @jugadores[result].char
                    encontrado = true
                else
                    i = i + 1
                end
            end

            if encontrado
                result = -1
            end
        end
        return result
    end

    def ganador
        # -1 si no hay ganador

        encontrado = false

        # filas
        i = 0
        while i < @tablero.length && !encontrado
            result = ganadorFila(i)
            if result != -1
                encontrado = true
            else
                i = i + 1
            end
        end

        # columnas
        i = 0
        while i < @tablero.length && !encontrado
            result = ganadorColumna(i)
            if result != -1
                encontrado = true
            else
                i = i + 1
            end
        end

        return result
    end
end


t = TresEnRaya.new(["X","O"])
puts t
puts

puts t.mark(0,1,2)
puts t
puts

puts t.mark(1,2,1)
puts t
puts

puts t.mark(0,0,1)
puts t
puts

puts t.mark(0,0,1)
puts t
puts

puts t.ganador

puts t.mark(1,2,2)
puts t
puts

puts t.ganador


t2 = TresEnRaya.new(["X","O"])
puts t2.mark(0,0,1)
puts t2.mark(0,1,1)
puts t2.mark(1,2,1)
puts t2.mark(1,0,2)
puts t2.mark(1,1,2)
puts t2.mark(1,2,2)
puts t2
puts t2.ganador
