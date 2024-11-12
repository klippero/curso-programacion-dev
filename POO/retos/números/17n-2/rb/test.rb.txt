print "Número: "
n = gets.chomp.to_i

print "Divisor: "
divisor = gets.chomp.to_i

if n % divisor == 0
    puts "#{divisor} ES DIVISOR de #{n}"
else
    puts "#{divisor} NO ES DIVISOR de #{n}"
end
