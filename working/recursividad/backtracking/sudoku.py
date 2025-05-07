class Sudoku:
    Sudoku.N = 9


    def __init__(self,posicionesFijas):
        self.__posicionesFijas = posicionesFijas

        self.__estado = []
        for item in self.__posicionesFijas:
            self.__estado.append(item)

        self.__posicionActual = 0
        self.__movimientos = 0
        self.__noSoluciones = 0


    def __str__(self):
        result = "Tablero:\n"
        for i in range(Sudoku.N*Sudoku.N):
            if i % (Sudoku.N*(Sudoku.N//3)) == 0:
                for j in range(Sudoku.N):
                    if j % (Sudoku.N//3) == 0:
                        result += '-+'
                    result += '----'
                result += "-+\n"
            if i % (Sudoku.N//3) == 0:
                result += ' |'
            if self.__estado['posicionesFijas'][i] != 0:
                result += f' *{self.__estado["tablero"][i]:2d}'
            else:
                result += f'  {self.__estado["tablero"][i]:2d}'
            if i % Sudoku.N == Sudoku.N-1:
                result += " |\n"

        for j in range(Sudoku.N):
            if j % (Sudoku.N//3) == 0:
                result += '-+'
            result += '----'

        result += "-+\n"
        result += f'Movimientos: self.__movimientos'
        result += 'Soluciones: ', self.__noSoluciones'
        return result


    def esUnaSolucion(self):
        return self.__posicionActual >= Sudoku.N*Sudoku.N


    def construirCandidatos(self):
        candidatos = []
        if self.__posicionesFijas[self.__posicionActual] != 0:
            candidatos.append(self.__posicionesFijas[self.__posicionActual])
        else:
            for i in range(1,Sudoku.N+1):
                if self.esValido(i):
                    candidatos.append(i)
        return candidatos


    def getFila(self,posicion,anchuraCuadrado):
        return posicion // anchuraCuadrado


    def getColumna(self,posicion,anchuraCuadrado):
        return posicion % anchuraCuadrado


    def getPosicion(self,fila,columna,anchuraCuadrado):
        return fila * anchuraCuadrado + columna


def esValido( self.__estado, num ):
    esta = False

    # misma fila
    k = 0
    while not esta and k < Sudoku.N:
        esta = self.__estado[getPosicion( getFila(self.__estado['posicionActual'],Sudoku.N),k,Sudoku.N )] == num
        k += 1

    # misma columna
    k = 0
    while not esta and k < Sudoku.N:
        esta = self.__estado[getPosicion( k, getColumna(self.__estado['posicionActual'],Sudoku.N),Sudoku.N )] == num
        k += 1

    # mismo cuadrante
    k = 0
    refFila = getFila(self.__estado['posicionActual'],Sudoku.N) // (Sudoku.N // 3) * 3
    refColumna = getColumna(self.__estado['posicionActual'],Sudoku.N) // (Sudoku.N // 3) * 3
    while not esta and k < Sudoku.N:
        esta = self.__estado[getPosicion( refFila + getFila( k, Sudoku.N // 3 ), refColumna + getColumna( k, Sudoku.N // 3 ), Sudoku.N )] == num
        k += 1

    return not esta


def extender( self.__estado, candidato ):
    self.__estado[self.__estado['posicionActual']] = candidato
    self.__estado['posicionActual'] += 1


def volver( self.__estado ):
    self.__estado['posicionActual'] -= 1
    if self.__estado['posicionesFijas'][self.__estado['posicionActual']] == 0:
        self.__estado[self.__estado['posicionActual']] = 0


def backtrack( self.__estado ):
    self.__estado['movimientos'] += 1
    if esUnaSolucion( self.__estado ):
        self.__estado['noSoluciones'] += 1
        procesarSolucion( self.__estado )
    else:
        candidatos = construirCandidatos( self.__estado )
        for candidato in candidatos:
            extender( self.__estado, candidato )
            backtrack( self.__estado );
            volver( self.__estado );

self.__estado = inicializa()
backtrack(self.__estado)
