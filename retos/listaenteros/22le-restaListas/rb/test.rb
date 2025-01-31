require_relative 'sol'

lista = Lista.new( [1,3,1,10,2,5,4] )
resta = lista.resta([1,2,4])
puts "La resta es #{resta}"
puts "y la original #{lista}"
