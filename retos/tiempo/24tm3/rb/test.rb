require_relative 'sol'

t1 = Tiempo.new(2,82,20)
t2 = Tiempo.new(2,65,2030)
t3 = t1 + t2
puts "#{t1} + #{t2} = #{t3}"
