class Empleado:
    def __init__(self,nombre,salario):
        self.__nombre = nombre
        self.__salario = salario

    def __str__(self):
        return f"{self.__nombre}: {self.__salario}€"


class Becario(Empleado):
    def __init__(self,nombre):
        super().__init__(nombre,7200)

    def __str__(self):
        return super().__str__() + " (becario)"


class Manager(Empleado):
    def __str__(self):
        return super().__str__() + " (manager)"


d = Empleado("Diego",35000)
print(d)

a = Becario("Alba")
print(a)

m = Manager("Marta",75000)
print(m)
