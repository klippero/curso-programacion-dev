require_relative 'sol'

cr = CajaRegistradora.new("cr1")
cr.add(1,5,7)
cr.take(1)
cr.add(0.10,3)
cr.add(0.01,7)
cr.take(1,3,5)
puts "#{cr}"

cr = CajaRegistradora.new("cr1")
puts "La caja recuperada de fichero: #{cr}"
