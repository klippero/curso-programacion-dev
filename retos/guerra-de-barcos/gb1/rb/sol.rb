class Tablero
    FALLO_CHAR = '▪'
    TOCADO_CHAR = 'X'   # ▦
    HUNDIDO_CHAR = '█'

    def initialize(filas,columnas)
        @tablero = []
        filas.times do
            @tablero << []
            columnas.times do
                @tablero[@tablero.length-1] << ' '
            end
        end
        @tablero[0][0] = 'B'

        @tablero[3][3] = 'B'
        @tablero[3][4] = 'B'

        @tablero[0][7] = 'B'
        @tablero[1][7] = 'B'
        @tablero[2][7] = 'B'
        @tablero[3][7] = 'B'
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
                if casilla == 'B'
                    result = result + " |"
                else
                    result = result + "#{casilla}|"
                end
            end
            result = result + "\n"
            result = result + self.linea
        end
        result = result + "\n"
        return result
    end

    def dentro?(fila,columna)
        return fila >= 0 && fila < self.filas && columna >= 0 && columna < self.columnas
    end

    def busca_B(f,c,df,dc)
        # en la dirección df,dc hasta encontrar agua o final del tablero
        # busca una 'B'
        nf = f + df
        nc = c + dc
        encontrado = false
        while ! encontrado && self.dentro?(nf,nc) && @tablero[nf][nc] != ' '
            if @tablero[nf][nc] == 'B'
                encontrado = true
            else
                nf = nf + df
                nc = nc + dc
            end
        end
        return encontrado
    end

    def hundido?(f,c)
        direcciones = [[0,1],[1,0],[0,-1],[-1,0]]
        i = 0
        encontrado = false
        while ! encontrado && i < direcciones.length
            if busca_B(f,c,direcciones[i][0],direcciones[i][1])
                encontrado = true
            else
                i = i + 1
            end
        end
        return !encontrado
    end

    def disparo(f,c)
        result = ''
        if @tablero[f][c] == ' '
            @tablero[f][c] = FALLO_CHAR
            result = 'agua'
        elsif @tablero[f][c] == 'B'
            @tablero[f][c] = TOCADO_CHAR
            if self.hundido?(f,c)
                result = 'hundido'
                @tablero[f][c] = HUNDIDO_CHAR
            else
                result = 'tocado'
            end
        end
        return result
    end

    def juego
        puts self
        print 'fila (-1 quit): '
        fila = gets.chomp.to_i
        while fila != -1
            print 'columna: '
            columna = gets.chomp.to_i
            puts

            if !self.dentro?(fila,columna)
                puts "dispara dentro anda..."
            else
                puts disparo(fila,columna)
            end

            puts
            puts self

            print 'fila (-1 quit): '
            fila = gets.chomp.to_i
        end
    end
end
