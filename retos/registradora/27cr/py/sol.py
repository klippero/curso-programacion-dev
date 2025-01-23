class CajaRegistradora:
    VALUE = [0.01, 0.02, 0.05, 0.1, 0.2, 0.5, 1, 2, 5, 10, 20, 50, 100, 200, 500]

    def __init__(self):
        self.__slot = {}
        for value in self.VALUE:
            self.__slot[value] = 0

    def __str__(self):
        result = ""
        for value,amount in self.__slot.items():
            if amount != 0:
                result += f"{amount} x {value}€ + "
        result = result[:-3]
        result += f" = {float(self)}€"
        return result

    def __float__(self):
        total = 0.0
        for value,amount in self.__slot.items():
            total += amount * value
        return total

    def add(self,value,amount):
        self.__slot[value] += amount

    def take(self,value,amount):
        if self.__slot[value] >= amount:
            self.__slot[value] -= amount

    def __lshift__(self,otra):
        for value,amount in otra.__slot.items():
            otra.take(value,amount)
            self.add(value,amount)

    def slot(self):
        return self.__slot