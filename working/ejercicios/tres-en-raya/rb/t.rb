
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
            result = result + '-+'
        end
        result = result + "\n"
        return result
    end

    def to_s
        result = "   "
        self.columnas.times do |i|
            result = result + "#{i} "
        end
        result = result + "\n"

        result = result + self.linea

        @tablero.length.times do |ifila|
            result = result + "#{ifila} |"
            @tablero[ifila].each do |casilla|
                result = result + "#{casilla}|"
            end
            result = result + "\n"
            result = result + self.linea
        end
        result = result + "\n"
        return result
    end

    def move(player,fila,col)
        if @tablero[fila][col] == Nada
            @tablero[fila][col] = @jugadores[player].char
        end
    end

    def ganador
        # -1 si no hay ganador
        result = -1

        fila = 0
        encontrado = false
        while fila < Size && result = -1

        end
    end
end


t = TresEnRaya.new(["X","O"])
puts t
puts

t.move(0,1,2)
puts t
puts

t.move(1,2,1)
puts t
puts

t.move(0,0,1)
puts t
