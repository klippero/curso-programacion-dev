require_relative 'sol'

c = Celsius.new(10)
puts "#{c} = #{c.to(Kelvin)} = #{c.to(Fahrenheit)}"

f = Fahrenheit.new(-10)
puts "#{f} = #{f.to(Kelvin)} = #{f.to(Celsius)}"

k = Kelvin.new(0)
puts "#{k} = #{k.to(Fahrenheit)} = #{k.to(Celsius)}"


c1 = Celsius.new(9)
f1 = c1.to(Fahrenheit)
c2 = f1.to(Celsius)
puts "#{c1} = #{f1} = #{c2}"

k1 = Kelvin.new(300)
c3 = k1.to(Celsius)
f2 = k1.to(Fahrenheit)
puts "#{k1} = #{c3} = #{f2}"

f = Fahrenheit.new(23.2)
k = Kelvin.new(392)
r = f + k
puts "#{f} + #{k} = #{r}"

s2 = k1 + c1
puts "#{k1} + #{c1} = #{s2}"
k2 = c1.to(Kelvin)
puts "#{c1} = #{k2}"
