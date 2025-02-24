# sólo lectura
f = File.open("working/ficheros/f.txt")
f.each do |line|
    print line
end

puts "-------"


# volver al inicio del fichero
f.rewind

f.each do |line|
    line.chomp!
    nombre,años = line.split(',')  # datos separados por comas
    puts "#{nombre} tiene #{años} años"
end


# cerrar el fichero
f.close


# lectura y escritura (si no hemos leído todo, machacará)
f = File.open("working/ficheros/f.txt","r+")
f.each do |line|
    puts line
end

f.puts "Rosalina,84"


# lectura de todo el fichero de golpe
f = File.open("working/ficheros/names.rb")
d = f.read
puts d


# añadir al final del fichero
f = File.open("working/ficheros/f.txt","a")
f.puts "Santiago,86"

# escribir en fichero (si existe, se machaca)
f = File.open("working/ficheros/f1.txt","w")
f.print 90
f.close
