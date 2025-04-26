class Empleado:
    def __str__(self):
        return "Empleado"


class Becario(Empleado):
    def __str__(self):
        return "Becario"


class Manager(Empleado):
    def __str__(self):
        return "Manager"


d = Empleado()
print(d)

a = Becario()
print(a)

m = Manager()
print(m)
