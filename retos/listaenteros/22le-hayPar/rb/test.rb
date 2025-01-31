require_relative 'sol'

lista = ListaEnteros.new( [1,3,1,10,5,7,2,11,2,5,4] )
puts lista.hayPar?

lista = ListaEnteros.new( [1,3,1,1] )
puts lista.hayPar?

lista = ListaEnteros.new( [] )
puts lista.hayPar?
