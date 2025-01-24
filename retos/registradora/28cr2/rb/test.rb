require_relative 'sol'

cr = CajaRegistradora.new
cr.add(0.02)
cr.add(0.02,3)
cr.add(0.02,3,5,1,7)
puts "cr: #{cr}"
