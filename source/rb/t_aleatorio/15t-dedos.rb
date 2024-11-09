class Mano
    def initialize
        @dedos = 0
    end

    def saca_dedos
        @dedos = rand(0..5)
    end

    def dedos
        return @dedos
    end

    def to_s
        return @dedos.to_s
    end
end


j1 = Mano.new
j2 = Mano.new

j1.saca_dedos
j2.saca_dedos
puts "#{j1.dedos} + #{j2.dedos} >> #{j1.dedos + j2.dedos}"

j1.saca_dedos
j2.saca_dedos
puts "#{j1.dedos} + #{j2.dedos} >> #{j1.dedos + j2.dedos}"

puts
puts
print "¿Pares no nones? (0) pares, (1) nones "
p = gets.chomp.to_i

print "Dedos: "
d = gets.chomp.to_i

maq = Mano.new
maq.saca_dedos
puts "La máquina saca: #{maq}"

if ( d + maq.dedos ) % 2 == p
    puts "ganas"
else
    puts "pierdes"
end
