class Empleado:
    def __init__(self,nombre,salario):
        self.nombre = nombre
        self.salario = salario

    def __str__(self):
        return f"{self.nombre}: {self.salario}€"


class Becario(Empleado):
    def __init__(self,nombre):
        super().__init__(nombre,7200)

    def __str__(self):
        return super().__str__() + " (becario)"


class Manager(Empleado):
    def __init__(self,nombre,salario,bonus):
        super().__init__(nombre,salario)
        self.__bonus = bonus

    def __str__(self):
        return f"{self.nombre}: {self.salario}€ + #{self.__bonus}€ (manager)"


d = Empleado("Diego",35000)
print(d)

a = Becario("Alba")
print(a)

m = Manager("Marta",75000,15000)
print(m)
