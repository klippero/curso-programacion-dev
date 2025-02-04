require_relative 'sol'

lista = Lista.new( [1,3,1,10,2,5,4] )
suma = lista + [3,17]

puts "La suma es #{suma}"
puts "y la original #{lista}"

lista1 = Lista.new( [4,6,3] )
lista2 = Lista.new( [4,7,2] )
lista3 = lista1 + lista2

puts "La suma es #{lista3}"
puts "y las listas son #{lista1}"
puts "y #{lista2}"
