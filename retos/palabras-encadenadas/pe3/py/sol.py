class Palabra:
    def __init__(self,word):
        self.__word = word

    def encadenadaCon(self,otra):
        return self.__word[-1] == otra[0]

    def __str__(self):
        return self.__word

class Juego:
    def __init__(self):
        self.__words = []

    def __str__(self):
        result = ""
        for word in self.__words:
            result = result + f" {word} > "
        return result[:-3]

    def add(self,word):
        if len(self.__words) == 0 or self.__words[-1].encadenadaCon(word):
            self.__words.append(Palabra(word))
            result = True
        else:
            result = False
        return result

    def jugar(self):
        fallo = False
        while not fallo:
            palabra = input("Palabra: ")
            fallo = not self.add(palabra)
            print(self)
        print(f"{palabra} no está encadenada. Has conseguido encadenar {len(self.__words)} palabras !!")
