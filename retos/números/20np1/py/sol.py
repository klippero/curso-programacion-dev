class Entero:
    def __init__(self,n):
        self.__n = n

    def mostrar_previos(self):
        i = 1
        while i < self.__n:
            print(f"{i} ",end="")
            i = i + 1
        print()
