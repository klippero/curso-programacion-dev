class Empleado:
    def __init__(self,nombre):
        self.__nombre = nombre

    def __str__(self):
        return self.__nombre


class Becario(Empleado):
    def __str__(self):
        return super().__str__() + " (becario)"


class Manager(Empleado):
    def __str__(self):
        return super().__str__() + " (manager)"


d = Empleado("Diego")
print(d)

a = Becario("Alba")
print(a)

m = Manager("Marta")
print(m)
