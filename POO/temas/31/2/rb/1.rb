print "Dame un número: "
n = gets.to_i
begin
    cociente = 100 / n
    puts "el cociente es #{cociente}"
rescue
    puts "no se puede dividir entre 0"
end
