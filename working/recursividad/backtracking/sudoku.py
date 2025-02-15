N = 9


def esUnaSolucion( estado ):
    return estado['posicionActual'] >= N*N


def construirCandidatos( estado ):
    candidatos = []
    if estado['posicionesFijas'][estado['posicionActual']] != 0:
        candidatos.append(estado['posicionesFijas'][estado['posicionActual']])
    else:
        for i in range(1,N+1):
            if esValido( estado, i ):
                candidatos.append(i)
    return candidatos


def inicializa():
    estado = {}
    estado['posicionesFijas'] = [
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
    estado['tablero'] = []
    for i in range(N*N):
        estado['tablero'].append(estado['posicionesFijas'][i])
    estado['posicionActual'] = 0
    estado['movimientos'] = 0
    estado['noSoluciones'] = 0
    return estado


def procesarSolucion( estado ):
    print('Tablero:')
    for i in range(N*N):
        if i % (N*(N//3)) == 0:
            for j in range(N):
                if j % (N//3) == 0:
                    print('-+',end='')
                print('----',end='')
            print('-+')
        if i % (N//3) == 0:
            print(' |',end='')
        if estado['posicionesFijas'][i] != 0:
            print(f' *{estado["tablero"][i]:2d}',end='')
        else:
            print(f'  {estado["tablero"][i]:2d}',end='')
        if i % N == N-1:
            print( ' |')
    for j in range(N):
        if j % (N//3) == 0:
            print('-+',end='')
        print('----',end='')
    print('-+')
    print( 'Movimientos: ', estado['movimientos'] )
    print( 'Soluciones: ', estado['noSoluciones'] )
    print()


def getFila( posicion, anchuraCuadrado ):
    return posicion // anchuraCuadrado


def getColumna( posicion, anchuraCuadrado ):
    return posicion % anchuraCuadrado


def getPosicion( fila, columna, anchuraCuadrado ):
    return fila * anchuraCuadrado + columna


def esValido( estado, num ):
    esta = False

    # misma fila
    k = 0
    while not esta and k < N:
        esta = estado['tablero'][getPosicion( getFila(estado['posicionActual'],N),k,N )] == num
        k += 1

    # misma columna
    k = 0
    while not esta and k < N:
        esta = estado['tablero'][getPosicion( k, getColumna(estado['posicionActual'],N),N )] == num
        k += 1

    # mismo cuadrante
    k = 0
    refFila = getFila(estado['posicionActual'],N) // (N // 3) * 3
    refColumna = getColumna(estado['posicionActual'],N) // (N // 3) * 3
    while not esta and k < N:
        esta = estado['tablero'][getPosicion( refFila + getFila( k, N // 3 ), refColumna + getColumna( k, N // 3 ), N )] == num
        k += 1

    return not esta


def extender( estado, candidato ):
    estado['tablero'][estado['posicionActual']] = candidato
    estado['posicionActual'] += 1


def volver( estado ):
    estado['posicionActual'] -= 1
    if estado['posicionesFijas'][estado['posicionActual']] == 0:
        estado['tablero'][estado['posicionActual']] = 0


def backtrack( estado ):
    estado['movimientos'] += 1
    if esUnaSolucion( estado ):
        estado['noSoluciones'] += 1
        procesarSolucion( estado )
    else:
        candidatos = construirCandidatos( estado )
        for candidato in candidatos:
            extender( estado, candidato )
            backtrack( estado );
            volver( estado );

estado = inicializa()
backtrack(estado)
