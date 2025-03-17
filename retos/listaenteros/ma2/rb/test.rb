require_relative 'sol'

lista1 = ListaEnteros.new( [1,3,5,7,2,11,5] )
puts "#{lista1.mayor} en posición #{lista1.posMayor}"

lista2 = ListaEnteros.new( [] )
puts "#{lista2.mayor} en posición #{lista2.posMayor}"
