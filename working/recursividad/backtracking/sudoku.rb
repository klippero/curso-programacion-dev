class Sudoku
    N = 9


    def initialize(posicionesFijas)
        @posicionesFijas = posicionesFijas

        @estado = []
        for item in @posicionesFijas
            @estado << item
        end

        @posicionActual = 0
        @movimientos = 0
        @soluciones = 0
    end

    
    def to_s
        result = ""
        result += "Tablero:\n"
        (N*N).times do |i|
            if i % (N*(N/3)) == 0
                N.times do |j|
                    if j % (N/3) == 0
                        result += '-+'
                    end
                    result += '---'
                end
                result += "-+\n"
            end
            if i % (N/3) == 0
                result += ' |'
            end
            if @posicionesFijas[i] != 0
                result += " *#{@estado[i]}"
            else
                result += "  #{@estado[i]}"
            end
            if i % N == N-1
                result += " |\n"
            end
        end

        N.times do |j|
            if j % (N/3) == 0
                result += '-+'
            end
            result += '---'
        end

        result += "-+\n"
        result += "Movimientos: #{@movimientos} / Soluciones: #{@soluciones}"
        return result
    end

    def esUnaSolucion?
        return @posicionActual >= N*N
    end

    def construirCandidatos
        candidatos = []
        if @posicionesFijas[@posicionActual] != 0
            candidatos << @posicionesFijas[@posicionActual]
        else
            (1..N).each do |i|
                if esValido?(i)
                    candidatos << i
                end
            end
        end
        return candidatos
    end

    def extender( candidato )
        @estado[@posicionActual] = candidato
        @posicionActual += 1
    end

    def volver
        @posicionActual -= 1
        if @posicionesFijas[@posicionActual] == 0
            @estado[@posicionActual] = 0
        end
    end

    def getFila( posicion, anchuraCuadrado )
        return posicion / anchuraCuadrado
    end

    def getColumna( posicion, anchuraCuadrado )
        return posicion % anchuraCuadrado
    end

    def getPosicion( fila, columna, anchuraCuadrado )
        return fila * anchuraCuadrado + columna
    end

    def esValido?( num )
        esta = false

        # misma fila
        k = 0
        while !esta and k < N
            esta = @estado[getPosicion( getFila(@posicionActual,N),k,N )] == num
            k += 1
        end

        # misma columna
        k = 0
        while !esta and k < N
            esta = @estado[getPosicion( k, getColumna(@posicionActual,N),N )] == num
            k += 1
        end

        # mismo cuadrante
        k = 0
        refFila = getFila(@posicionActual,N) / (N / 3) * 3
        refColumna = getColumna(@posicionActual,N) / (N / 3) * 3
        while !esta and k < N
            esta = @estado[getPosicion( refFila + getFila( k, N / 3 ), refColumna + getColumna( k, N / 3 ), N )] == num
            k += 1
        end
        return !esta
    end

    def backtrack
        @movimientos += 1
        if esUnaSolucion?
            @soluciones += 1
            puts self
        else
            candidatos = construirCandidatos
            candidatos.each do |candidato|
                extender( candidato )
                backtrack
                volver
            end
        end
    end

    def backtrack2
        @movimientos += 1
        candidatos = construirCandidatos
        candidatos.each do |candidato|
            extender( candidato )
            if esUnaSolucion?
                @soluciones += 1
                puts self
            elsif @posicionActual < N*N
                backtrack2
            end
            volver
        end
    end
end


s = Sudoku.new(
    [
        0,6,0,7,0,8,1,9,2,
        1,0,5,2,0,0,0,0,7,
        0,2,0,0,0,6,0,0,0,
        0,5,0,9,3,0,0,4,0,
        0,0,6,5,0,2,7,8,0,
        9,7,0,0,0,0,3,2,5,
        0,0,7,4,0,0,8,0,6,
        8,9,4,0,7,0,0,0,0,
        0,1,0,3,0,0,0,7,4,
    ]
)
s.backtrack



=begin
[
    5,3,0,0,0,0,0,0,0,
    6,0,0,0,0,5,0,0,0,
    0,9,8,0,0,0,0,6,0,
    8,0,0,0,6,0,0,0,3,
    4,0,0,8,0,3,0,0,1,
    7,0,0,0,2,0,0,0,6,
    0,6,0,0,0,0,2,8,0,
    0,0,0,4,1,9,0,0,5,
    0,0,0,0,8,0,0,7,0
]
=end
