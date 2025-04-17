class Empleado
    def initialize(nombre)
        @nombre = nombre
    end

    def to_s
        return @nombre
    end
end


class Becario < Empleado
    def to_s
        return super.to_s + " (becario)"
    end
end


class Manager < Empleado
    def to_s
        return super + " (manager)"
    end
end


d = Empleado.new("Diego")
puts d

a = Becario.new("Alba")
puts a

m = Manager.new("Marta")
puts m
