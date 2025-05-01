class TresEnRaya
    Size = 3
    Nada = ' '

    def initialize(tablero)
        @tablero = tablero

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

    def busca(n)
        # busca n casillas iguales seguidas en vertical, horizontal o diagonal
        # devuelve [char,fila,col]
        # si no lo encuentra devuelve [-1,-1,-1]
    end

    def busca(n,fila,col)
        # desde fila,col busca n casillas iguales seguidas en cualquier dirección
    end

    def busca(n,fila,col,incFila,incCol)
        # desde fila,col busca n casillas iguales seguidas
        # en la dirección indicada

        encontrado = false
        result = -1
        f = 0
        c = 0
        if @tablero[f][c] != Nada
            result = findJugadorChar(@tablero[f][c])
            fi = f
            ci = c
            while enTablero(fi,ci) && !encontrado
                if findJugadorChar(@tablero[fi][ci]) != @jugadores[result].char
                    encontrato = true
                else
                    f = f + incFila
                    c = c + incCol
                end
            end
            if encontrado
                result = -1
            end
        end
        return [result,f,c]
    end
end


t = TresEnRaya.new(
    ["X","O"],
    [
        [' ',' ',' '],
        [' ','O','O'],
        [' ',' ',' '],
    ]
)
