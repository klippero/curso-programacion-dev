require_relative 'sol'

lista = ListaEnteros.new( [1,3,5,7,2,11,5] )
puts lista.posItem(11)
puts lista.posItem(1)
puts lista.posItem(5)
puts lista.posItem(4)

lista = ListaEnteros.new( [] )
puts lista.posItem(4)
