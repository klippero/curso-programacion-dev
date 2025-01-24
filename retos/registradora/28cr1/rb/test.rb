require_relative 'sol'

cr = CajaRegistradora.new
cr.add(0.02)
cr.add(20,2)
cr.add(0.02,3)
puts "cr: #{cr}"

cr.take(0.02)
cr.take(0.02,1)
puts "cr: #{cr}"
