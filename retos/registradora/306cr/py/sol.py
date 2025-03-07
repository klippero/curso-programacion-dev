from pathlib import Path
import pickle


class CajaRegistradora:
    VALUE = [0.01, 0.02, 0.05, 0.1, 0.2, 0.5, 1, 2, 5, 10, 20, 50, 100, 200, 500]
    PATH_FILE = "retos/registradora/306cr/"

    def __init__(self,name="caja"):
        self.__name = name
        self.__fileName = CajaRegistradora.PATH_FILE + name + ".dat"
        self.__slot = {}
        for value in self.VALUE:
            self.__slot[value] = 0
        if Path(self.__fileName).exists():
            nueva_cr = pickle.load(open(self.__fileName, "rb"))
            self << nueva_cr

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

    def add(self,value,amount=1,*mas_depositos):
        self.__slot[value] += amount
        for deposito in mas_depositos:
            self.__slot[value] += deposito
        self.save()

    def take(self,value,amount=1,*mas_retiradas):
        if self.__slot[value] >= amount:
            self.__slot[value] -= amount
        
        for retirada in mas_retiradas:
            if self.__slot[value] >= retirada:
                self.__slot[value] -= retirada
        self.save()

    def __lshift__(self,otra):
        for value,amount in otra.__slot.items():
            otra.take(value,amount)
            self.add(value,amount)

    def slot(self):
        return self.__slot

    def save(self):
        pickle.dump(self, open(self.__fileName, "wb"))
