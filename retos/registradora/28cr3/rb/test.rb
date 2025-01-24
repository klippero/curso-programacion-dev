require_relative 'sol'

cr = CajaRegistradora.new
cr.add(1,5)
cr.take(1)
cr.take(1,3,5)
puts "cr: #{cr}"
