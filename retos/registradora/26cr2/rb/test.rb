require_relative 'sol'

cr = CajaRegistradora.new
cr.add(0.02,3)
cr.add(20,2)
puts cr.to_f
cr.add(2,1)
cr.add(1,12)
cr.add(0.5,3)
puts cr
