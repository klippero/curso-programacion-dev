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
puts d.to_s

a = Becario.new
puts a.to_s

m = Manager.new
puts m.to_s
