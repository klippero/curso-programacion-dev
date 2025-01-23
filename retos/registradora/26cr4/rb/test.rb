require_relative 'sol'

cr = CajaRegistradora.new
cr.add(0.02,3)
cr.add(20,2)
cr.add(2,1)
cr.add(1,12)
cr.add(0.5,3)
puts "cr: #{cr}"

cr2 = CajaRegistradora.new
cr2.add(0.2,14)
cr2.add(1,4)
cr2.add(0.1,7)
puts "cr2: #{cr2}"

cr2.add(100,2)
puts "cr2: #{cr2}"

cr2.take(100,1)
puts "cr2: #{cr2}"

cr2.take(0.01,3)
puts "cr2: #{cr2}"

cr << cr2
puts "cr: #{cr}"
puts "cr2: #{cr2}"
