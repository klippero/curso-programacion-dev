class Entero:
    def __init__(self,n):
        self.__n = n

    def mostrar_previos(self):
        for i in range(1,self.__n):
            print(i,end=" ")
        print()