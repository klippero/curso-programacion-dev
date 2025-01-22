class Entero:
    def __init__(self,n):
        self.__n = n

    def primo(self):
        i = 2
        encontrado = False
        while i < self.__n and not encontrado:
            if self.__n % i == 0:
                encontrado = True
            else:
                print(f"{i} ",end="")
                i = i + 1
        print(f"al salir del bucle i vale {i} ")
