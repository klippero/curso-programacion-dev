puts "HIJO 1"
print "Nombre: "
nombre_hijo1 = gets.chomp.to_s
print "Edad: "
edad_hijo1 = gets.chomp.to_i

puts
puts "HIJO 2"
print "Nombre: "
nombre_hijo2 = gets.chomp.to_s
print "Edad: "
edad_hijo2 = gets.chomp.to_i

puts
print "Tu edad: "
tu_edad = gets.chomp.to_i
puts

puts "#{nombre_hijo1} nació cuando tenías #{tu_edad - edad_hijo1} años"
puts "#{nombre_hijo2} nació cuando tenías #{tu_edad - edad_hijo2} años"

if edad_hijo1 > edad_hijo2
    puts "Cuando nació #{nombre_hijo2}, #{nombre_hijo1} tenía #{edad_hijo1 - edad_hijo2} años"
elsif edad_hijo2 > edad_hijo1
    puts "Cuando nació #{nombre_hijo1}, #{nombre_hijo2} tenía #{edad_hijo2 - edad_hijo1} años"
else
    puts "#{nombre_hijo1} y #{nombre_hijo2} nacieron el mismo año"
end
