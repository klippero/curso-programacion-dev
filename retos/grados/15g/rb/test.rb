require_relative 'sol'

c = Celsius.new(10)
puts "#{c} = #{c.to_Kelvin} = #{c.to_Fahrenheit}"

f = Fahrenheit.new(-10)
puts "#{f} = #{f.to_Kelvin} = #{f.to_Celsius}"

k = Kelvin.new(0)
puts "#{k} = #{k.to_Fahrenheit} = #{k.to_Celsius}"
