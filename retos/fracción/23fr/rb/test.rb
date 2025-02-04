require_relative 'sol'

f1 = Fraccion.new(2,3)
f2 = Fraccion.new(3,4)

puts f1
puts f2

f3 = f1 * f2
puts "#{f1} * #{f2} = #{f3}"
