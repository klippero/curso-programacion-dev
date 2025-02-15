class Elipse
    def initialize(radio1,radio2)
        @radio1 = radio1
        @radio2 = radio2
    end

    def area
        return Math::PI * @radio1 * @radio2
    end

    def to_s
        return "#{@radio1}x#{@radio2}"
    end
end


class Circulo < Elipse
    def initialize(radio)
        super(radio,radio)
    end

    def to_s
        resut = "Círculo " + super.to_s
    end
end


c = Circulo.new(3)
puts "#{c} área: #{c.area}"

r = Elipse.new(17,3)
puts "#{r} área: #{r.area}"
