class Mastermind
    def initialize(lst)
        @lista = lst
        @tries = []
        @hints = []
    end

    def tryThis(try)
        # 2 acierta item y posición
        # 1 acierta item pero no posición

        @tries << try

        used = []
        @lista.each do
            used << false
        end

        result = []
        try.each do
            result << 0
        end

        # primera iteración busca elementos de valor y posición 2
        try.length.times do |i|
            if @lista.length > i && try[i] == @lista[i]
                result[i] = 2
                used[i] = true
            end
        end

        # segunda iteración busca elementos de valor pero no posición 1
        try.length.times do |i|
            if result[i] == 0
                j = 0
                encontrado = false
                while j < @lista.length && !encontrado
                    if @lista[j] == try[i] && !used[j]
                        used[j] = true
                        result[i] = 1
                        encontrado = true
                    else
                        j = j + 1
                    end
                end
            end
        end

        @hints << result

        return result
    end

    def backList(lst)
        # devuelve la lista en el orden inverso
        result = ""
        lst.each do |item|
            result = item.to_s + " " + result
        end
        return result
    end

    def to_s
        result = ""
        @tries.length.times do |i|
            result = result + backList(@tries[i]) + "   " + backList(@hints[i]) + "\n"
        end
        return result
    end

    def success_try(hint)
        encontrado = false
        i = 0
        while i < hint.length && !encontrado
            if hint[i] != 2
                encontrado = true
            else
                i = i + 1
            end
        end
        return !encontrado
    end

    def success?
        result = false
        if @hints.length > 0
            result = success_try(@hints[@hints.length-1])
        end
        return result
    end
end


class TorosYVacas
    def initialize
        numero_secreto = []
        4.times do
            numero_secreto << rand(10)
        end
        @mm = Mastermind.new(numero_secreto)
    end

    def to_s
        return @mm.to_s
    end

    def valida(n)
        try = []
        numero = n
        while numero > 0
            resto = numero % 10
            numero = numero / 10
            try << resto
        end
        @mm.tryThis(try)
        puts
    end

    def success?
        return @mm.success?
    end
end

=begin
# esta prueba requiere que se hagan 2 bucles, primero los 2 y después de los 1
mm = Mastermind.new([6,4,8,9])
mm.tryThis([8,2,8,2,1,9])
puts mm
=end

tv = TorosYVacas.new
while !tv.success?
    print "\nIntento: "
    try = gets.chomp.to_i
    tv.valida(try)
    puts tv
end
