require_relative 'sol'

cr = CajaRegistradora.new
cr.add(0.02,3)
cr.add(20,2)
puts cr

cr.take(20,1)
puts cr

cr.take(50,1)
puts cr

cr.add(1,12)
cr.add(0.5,3)
puts cr

cr.take(0.5,3)
puts cr
