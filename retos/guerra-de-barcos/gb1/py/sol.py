class Tablero:
    FALLO_CHAR = '▪'
    TOCADO_CHAR = 'X'   # ▦
    HUNDIDO_CHAR = '█'

    def __init__(self,filas,columnas):
        self.__tablero = []
        for _ in range(filas):
            self.__tablero.append([])
            for _ in range(columnas):
                self.__tablero[len(self.__tablero)-1].append(' ')
        self.__tablero[0][0] = 'B'

        self.__tablero[3][3] = 'B'
        self.__tablero[3][4] = 'B'

        self.__tablero[0][7] = 'B'
        self.__tablero[1][7] = 'B'
        self.__tablero[2][7] = 'B'
        self.__tablero[3][7] = 'B'

    def filas(self):
        return len(self.__tablero)

    def columnas(self):
        return len(self.__tablero[0])

    def linea(self):
        result = "  +"
        for _ in range(self.columnas()):
            result = result + '-+'
        result = result + "\n"
        return result

    def __str__(self):
        result = "   "
        for i in range(self.columnas()):
            result = result + f"{i} "
        result = result + "\n"

        result = result + self.linea()

        for ifila in range(len(self.__tablero)):
            result = result + f"{ifila} |"
            for casilla in self.__tablero[ifila]:
                if casilla == 'B':
                    result = result + " |"
                else:
                    result = result + f"{casilla}|"
            result = result + "\n"
            result = result + self.linea()
        result = result + "\n"
        return result

    def esta_dentro(self,fila,columna):
        return fila >= 0 and fila < self.filas() and columna >= 0 and columna < self.columnas()

    def busca_B(self,f,c,df,dc):
        # en la dirección df,dc hasta encontrar agua o final del tablero
        # busca una 'B'
        nf = f + df
        nc = c + dc
        encontrado = False
        while not encontrado and self.esta_dentro(nf,nc) and self.__tablero[nf][nc] != ' ':
            if self.__tablero[nf][nc] == 'B':
                encontrado = True
            else:
                nf = nf + df
                nc = nc + dc
        return encontrado

    def es_hundido(self,f,c):
        direcciones = [[0,1],[1,0],[0,-1],[-1,0]]
        i = 0
        encontrado = False
        while not encontrado and i < len(direcciones):
            if self.busca_B(f,c,direcciones[i][0],direcciones[i][1]):
                encontrado = True
            else:
                i = i + 1
        return not encontrado

    def disparo(self,f,c):
        result = ''
        if self.__tablero[f][c] == ' ':
            self.__tablero[f][c] = Tablero.FALLO_CHAR
            result = 'agua'
        elif self.__tablero[f][c] == 'B':
            self.__tablero[f][c] = Tablero.TOCADO_CHAR
            if self.es_hundido(f,c):
                result = 'hundido'
                self.__tablero[f][c] = Tablero.HUNDIDO_CHAR
            else:
                result = 'tocado'
        return result

    def juego(self):
        print(self)
        fila = int(input('fila (-1 quit): '))
        while fila != -1:
            columna = int(input('columna: '))
            print()

            if not self.esta_dentro(fila,columna):
                print("dispara dentro anda...")
            else:
                print(self.disparo(fila,columna))

            print()
            print(self)

            fila = int(input('fila (-1 quit): '))
