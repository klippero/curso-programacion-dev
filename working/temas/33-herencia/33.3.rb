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
        return super.to_s + " Becario"
    end
end


class Manager < Empleado
    def to_s
        return super + " Manager"
    end
end


d = Empleado.new("Diego")
puts d.to_s

a = Becario.new("Alba")
puts a.to_s

m = Manager.new("Marta")
puts m.to_s
