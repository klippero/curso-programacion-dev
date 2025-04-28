print "Dame un número: "
n = gets.to_i
begin
    puts 100 / n
rescue ZeroDivisionError
    puts "no se puede dividir entre 0"
end
