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

        if fin_de_juego
            if @winner[0] == -2
                result = result + ">> empate"
            else
                result = result + ">> ganador: #{@jugadores[@winner[0]].char}"
            end
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


    def busca
        # busca @sizeSol casillas iguales seguidas en vertical, horizontal o diagonal
        # devuelve [char,fila,col]
        # si no lo encuentra devuelve [-1,-1,-1]
        # si todas las casillas están ocupadas [-2,-1,-1]

        encontrado = false
        f = 0
        c = 0
        while enTablero(f,c) && !encontrado
            while enTablero(f,c) && !encontrado
                result = buscaFC(f,c)
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

        # si no hay ganador se chequea si hay empate
        if result[0] == -1
            if !quedan_casillas_vacias
                result[0] = -2
            end
        end

        return result
    end


    def buscaFC(fila,col)
        # desde fila,col busca @sizeSol casillas iguales seguidas en cualquier dirección

        dir = [[0,1],[1,0],[1,1],[-1,1]]   # fila, columna, diagonal

        encontrado = false
        i = 0
        while i < dir.length && !encontrado
            result = buscaFCD(fila,col,dir[i][0],dir[i][1])
            if result[0] != -1
                encontrado = true
            else
                i = i + 1
            end
        end
        return result
    end


    def buscaFCD(fila,col,incFila,incCol)
        # desde fila,col busca @sizeSol casillas iguales seguidas
        # en la dirección indicada

        # se busca una casilla que no tenga pieza del mismo jugador
        encontrado = false
        result = -1
        i = 1
        if @tablero[fila][col] != Nada
            result = findJugadorChar(@tablero[fila][col])
            f = fila + ( incFila * ( @sizeSol - 1 ) )
            c = col + ( incCol * ( @sizeSol - 1 ) )
            while i < @sizeSol && enTablero(f,c) && !encontrado
                if @tablero[f][c] != @jugadores[result].char
                    encontrado = true
                else
                    f = f - incFila
                    c = c - incCol
                    i = i + 1
                end
            end
            if encontrado || i < @sizeSol
                result = -1
            end
        end
        return [result,fila,col]
    end


    def quedan_casillas_vacias
        encontrado = false
        f = 0
        c = 0
        while enTablero(f,c) && !encontrado
            while enTablero(f,c) && !encontrado
                if @tablero[f][c] == Nada
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
        return encontrado
    end


    def fin_de_juego
        return @winner[0] != -1
    end


    def procesa
        # chequea si hay un ganador o hay empate
        @winner = busca
    end


    def jugar
        turno = rand(@jugadores.length)

        while !fin_de_juego
            puts "---- Juega #{@jugadores[turno].char} -------------"
            ha_jugado = false
            while !ha_jugado
                print "fila: "
                fila = gets.chomp.to_i
                print "columna: "
                col = gets.chomp.to_i
                ha_jugado = mark(turno,fila,col)
            end
            procesa
            puts self
            puts
            turno = ( turno + 1 ) % @jugadores.length
        end
    end
end


class Sesion
    def jugar
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
    end
end
