require_relative 'sol'

print "Número: "
n = gets.chomp.to_i

print "Divisor: "
divisor = gets.chomp.to_i

numero = Entero.new(n)
if numero.es_multiplo_de(divisor)
    puts "#{divisor} ES DIVISOR de #{numero}"
else
    puts "#{divisor} NO ES DIVISOR de #{numero}"
end
