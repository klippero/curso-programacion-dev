class CajaRegistradora:
    VALUE = [0.01, 0.02, 0.05, 0.1, 0.2, 0.5, 1, 2, 5, 10, 20, 50, 100, 200, 500]

    def __init__(self):
        # self.__slot = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        self.__slot = []
        for _ in range(len(self.VALUE)):
            self.__slot.append(0)

    def i4value(self,value):
        i = 0
        encontrado = False
        while i < len(self.VALUE) and not encontrado:
            if self.VALUE[i] == value:
                encontrado = True
            else:
                i += 1
        if not encontrado:
            i = -1
        return i

    def __str__(self):
        result = ""
        for i in range(len(self.__slot)):
            if self.__slot[i] != 0:
                result += f"{self.__slot[i]} x {self.VALUE[i]}€ + "
        result = result[:-3]
        result += f" = {float(self)}€"
        return result

    def add(self,value,amount):
        i = self.i4value(value)
        if i != -1:
              self.__slot[i] += amount

    def __float__(self):
        total = 0.0
        for i in range(len(self.__slot)):
            total += self.__slot[i] * self.VALUE[i]
        return total
