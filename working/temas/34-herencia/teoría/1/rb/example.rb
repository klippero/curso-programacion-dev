class Empleado
    def to_s
        return "Empleado"
    end
end


class Becario < Empleado
end


class Manager < Empleado
end


d = Empleado.new
puts d

a = Becario.new
puts a

m = Manager.new
puts m
