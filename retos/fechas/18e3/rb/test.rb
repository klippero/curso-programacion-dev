require_relative 'sol'

c = Año.new(2000)
puts "#{c} es bisiesto: #{c.es_bisiesto}"

c = Año.new(2023)
puts "#{c} es bisiesto: #{c.es_bisiesto}"

c = Año.new(2024)
puts "#{c} es bisiesto: #{c.es_bisiesto}"

c = Año.new(2100)
puts "#{c} es bisiesto: #{c.es_bisiesto}"
