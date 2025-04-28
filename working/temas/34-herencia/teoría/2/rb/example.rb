class Empleado
    def to_s
        return "Empleado"
    end
end


class Becario < Empleado
    def to_s
        return "Becario"
    end
end


class Manager < Empleado
    def to_s
        return "Manager"
    end
end


d = Empleado.new
puts d

a = Becario.new
puts a

m = Manager.new
puts m
