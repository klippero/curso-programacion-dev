class Entero:
    def __init__(self,n):
        self.__n = n

    def primo(self):
        i = 2
        while i < self.__n:
            print(f"{i} ",end="")
            i = i + 1
        print(f"al salir del bucle i vale {i} ")
