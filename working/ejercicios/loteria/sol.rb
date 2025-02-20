class Papeleta
    def initialize(nombre)
        @nombre = nombre
    end

    def to_s
        return @nombre
    end
end


def Bombo
    def initialize
        @papeletas = []
    end

    def << (papeleta)
        @papeletas << papeleta
    end
end


print "Nombre: "
nombre = gets.chomp.to_s
papeleta = Papeleta.new(nombre)

