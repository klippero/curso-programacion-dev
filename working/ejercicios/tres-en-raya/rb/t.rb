class Jugador
    def initialize(char)
        @char = char
    end

    def char
        return @char
    end
end


class Jugada
    def initialize(jugador,fila,col)
        @jugador = jugador
        @fila = fila
        @col = col
    end
end


class Partida
    Nada = ' '


    def initialize(jugadores,size,sizeSol)
        @winner = [-1,-1,-1]
        @size = size
        @sizeSol = sizeSol
        @tablero = []
        @size.times do
            @tablero.append([])
            @size.times do
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


    def enTablero(fila,col)
        return fila < filas && col < columnas && fila >= 0 && col >= 0
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

        if alguien_gana
            result = result + ">> ganador: #{@jugadores[@winner[0]].char}"
        end
        return result
    end


    def mark(player,fila,col)
        if enTablero(fila,col) && @tablero[fila][col] == Nada
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


    def busca(n)
        # busca n casillas iguales seguidas en vertical, horizontal o diagonal
        # devuelve [char,fila,col]
        # si no lo encuentra devuelve [-1,-1,-1]

        encontrado = false
        f = 0
        c = 0
        while enTablero(f,c) && !encontrado
            while enTablero(f,c) && !encontrado
                result = buscaFC(@sizeSol,f,c)
                if result[0] != -1
                    encontrado = true
                else
                    c = c + 1
                end
            end
            if !encontrado
                f = f + 1
                c = 0
            end
        end
        return result
    end


    def buscaFC(n,fila,col)
        # desde fila,col busca n casillas iguales seguidas en cualquier dirección

        dir = [[0,1],[1,0],[1,1],[-1,1]]   # fila, columna, diagonal

        encontrado = false
        i = 0
        while i < dir.length && !encontrado
            result = buscaFCD(n,fila,col,dir[i][0],dir[i][1])
            if result[0] != -1
                encontrado = true
            else
                i = i + 1
            end
        end
        return result
    end


    def buscaFCD(n,fila,col,incFila,incCol)
        # desde fila,col busca n casillas iguales seguidas
        # en la dirección indicada

        # se busca una casilla que no tenga pieza del mismo jugador
        encontrado = false
        result = -1
        i = 1
        if @tablero[fila][col] != Nada
            result = findJugadorChar(@tablero[fila][col])
            f = fila + ( incFila * ( n - 1 ) )
            c = col + ( incCol * ( n - 1 ) )
            while i < n && enTablero(f,c) && !encontrado
                if @tablero[f][c] != @jugadores[result].char
                    encontrado = true
                else
                    f = f - incFila
                    c = c - incCol
                    i = i + 1
                end
            end
            if encontrado || i < n
                result = -1
            end
        end
        return [result,fila,col]
    end


    def alguien_gana
        return @winner[0] != -1
    end


    def jugar
        turno = rand(@jugadores.length)

        while !alguien_gana
            puts "---- Juega #{@jugadores[turno].char} -------------"
            ha_jugado = false
            while !ha_jugado
                print "fila: "
                fila = gets.chomp.to_i
                print "columna: "
                col = gets.chomp.to_i
                ha_jugado = mark(turno,fila,col)
            end
            @winner = busca(@sizeSol)
            puts self
            puts
            turno = ( turno + 1 ) % @jugadores.length
        end
    end
end


puts "------- NUEVA PARTIDA ------------"
print "Tamaño del tablero: "
size = gets.chomp.to_i

while size > 0
    print "Casillas seguidas: "
    sizeSol = gets.chomp.to_i
    print "Jugadores: "
    jugadores = gets.chomp.to_i
    chars = []
    jugadores.times do
        print "Símbolo: "
        chars << gets.chomp.to_s
    end
    t = Partida.new(chars,size,sizeSol)
    t.jugar

    puts "------- NUEVA PARTIDA ------------"
    print "Tamaño del tablero: "
    size = gets.chomp.to_i
end
