require_relative 'sol'

print "ºC: "
c = gets.chomp.to_f
grados_c = Celsius.new(c)

puts "#{c}ºC = #{grados_c.to_Fahrenheit}ºF"
