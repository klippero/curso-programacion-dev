class Empleado
    def initialize(nombre,salario)
        @nombre = nombre
        @salario = salario
    end

    def to_s
        return "#{@nombre}: #{@salario}€"
    end
end


class Becario < Empleado
    def initialize(nombre)
        super(nombre,7200)
    end

    def to_s
        return super.to_s + " Becario"
    end
end


class Manager < Empleado
    def initialize(nombre,salario,bonus)
        super(nombre, salario)
        @bonus = bonus
    end

    def to_s
        return "#{@nombre}: #{@salario}€ + #{@bonus} Manager"
    end
end


d = Empleado.new("Diego",35000)
puts d.to_s

a = Becario.new("Alba")
puts a.to_s

m = Manager.new("Marta",75000,15000)
puts m.to_s
