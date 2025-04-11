class CalculoMatematico

    attr_reader :preg, :resp, :respStr

    def self.creaCalculo
        tipo = [:areaTriangulo, :suma, :resta, :producto, :division, :PerimetroRectangulo, :Cuadrado, :Raiz].sample
        case tipo
        when :areaTriangulo
            resp = AreaTriangulo.new
        when :suma
            resp = Suma.new
        when :resta
            resp = Resta.new
        when :producto
            resp = Producto.new
        when :division
            resp = Division.new
        when :PerimetroRectangulo
            resp = PerimetroRectangulo.new
        when :Cuadrado
            resp = Cuadrado.new
        when :Raiz
            resp = Raiz.new
        end
        return resp
    end

    def to_s
        "#{@preg} #{@resp} (#{@respStr})"
    end
end

class AreaTriangulo < CalculoMatematico
    def initialize
        base = rand(1..10)
        altura = rand(1..10)
        @preg = "¿Cuál es el área de un triángulo de base #{base} y altura #{altura} ?"
        @resp = base * altura / 2.to_f
        @respStr = "base x altura / 2"
    end
end

class PerimetroRectangulo < CalculoMatematico
    def initialize
        a = rand(2..20)
        b = rand(2..a)
        @preg = "¿Cuál es el perímetro de un rectángulo de #{a} x #{b} ?"
        @resp = 2 * a + 2 * b
        @respStr = "suma de los lados"
    end
end

class Suma < CalculoMatematico
    def initialize
        a = rand(1..99)
        b = rand(1..99)
        @preg = "#{a} + #{b}"
        @resp = a + b
    end
end

class Resta < CalculoMatematico
    def initialize
        a = rand(1..99)
        b = rand(1..a)
        @preg = "#{a} - #{b}"
        @resp = a - b
    end
end

class Producto < CalculoMatematico
    def initialize
        a = rand(1..99)
        b = rand(1..10)
        @preg = "#{a} x #{b}"
        @resp = a * b
    end
end

class Division < CalculoMatematico
    def initialize
        b = rand(1..10)
        a = rand(1..20) * b
        @preg = "#{a} / #{b}"
        @resp = a / b
    end
end

class Cuadrado < CalculoMatematico
    def initialize
        a = rand(2..17)
        @preg = "¿Cuál es el cuadrado de #{a} ?"
        @resp = a * a
    end
end

class Raiz < CalculoMatematico
    def initialize
        @resp = rand(1..20)
        a = @resp * @resp
        @preg = "¿Cuál es la raíz de #{a} ?"
    end
end