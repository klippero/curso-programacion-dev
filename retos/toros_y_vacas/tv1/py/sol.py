import random


class TorosYVacas:
    def __init__(self,longitud):
        self.__secreto = []
        for _ in range(longitud):
            self.__secreto.append(random.randrange(10))
        self.__tries = []
        self.__hints = []

    def __str__(self):
        result = ""
        for i in range(len(self.__tries)):
            for item in self.__tries[i]:
                result = result + f" {item}"
            result = result + "   "

            for item in self.__hints[i]:
                result = result + f" {item}"
            result = result + "\n"
        return result

    def valida(self,n):
        # 2 acierta item y posición
        # 1 acierta item pero no posición

        intento = []
        numero = n
        while numero > 0:
            resto = numero % 10
            numero = numero // 10
            intento = [resto] + intento

        # completa con 0 por la izquierda el intento
        while len(intento) < len(self.__secreto):
            intento = [0] + intento

        # si el intento es más largo, lo trunca
        intento = intento[:len(self.__secreto)]

        self.__tries.append(intento)

        used = []
        for _ in self.__secreto:
            used.append(False)

        result = []
        for _ in intento:
            result.append(0)

        # primera iteración busca elementos de valor y posición 2
        for i in range(len(intento)):
            if len(self.__secreto) > i and intento[i] == self.__secreto[i]:
                result[i] = 2
                used[i] = True

        # segunda iteración busca elementos de valor pero no posición 1
        for i in range(len(intento)):
            if result[i] == 0:
                j = 0
                encontrado = False
                while j < len(self.__secreto) and not encontrado:
                    if self.__secreto[j] == intento[i] and not used[j]:
                        used[j] = True
                        result[i] = 1
                        encontrado = True
                    else:
                        j = j + 1

        self.__hints.append(result)
        return result

    def success_intento(self,hint):
        # busca elementos en el intento que no sean 2 y si lo encuentra es false
        encontrado = False
        i = 0
        while i < len(hint) and not encontrado:
            if hint[i] != 2:
                encontrado = True
            else:
                i = i + 1
        return not encontrado

    def success(self):
        result = False
        if len(self.__hints) > 0:
            result = self.success_intento(self.__hints[-1])
        return result

    def juego(self):
        while not self.success():
            n = int(input("\nIntento: "))
            self.valida(n)
            print(self)
