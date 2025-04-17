class Empleado:
    def __str__(self):
        return "Empleado"


class Becario(Empleado):
    pass


class Manager(Empleado):
    pass


d = Empleado()
print(d)

a = Becario()
print(a)

m = Manager()
print(m)
