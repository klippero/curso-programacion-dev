require_relative 'sol'

lista = ListaEnteros.new(1,2,3,4,5,6,8,9)
puts "La media de #{lista} es #{lista.media}"

lista = ListaEnteros.new( 8,14,9,12,14,12,15,11,12,8,10,14,12,9,12 )
puts "La mediana de #{lista} es #{lista.mediana}"

lista = ListaEnteros.new(1,2,3,4,5,6,8,9)
puts "La mediana de #{lista} es #{lista.mediana}"

lista = ListaEnteros.new( 8,14,9,12,14,12,15,11,12,8,10,14,12,9,12 )
puts "La moda de #{lista} es #{lista.moda}"

lista = ListaEnteros.new(2,2,3,5,5,6,8,9)
puts "La moda de #{lista} es #{lista.moda}"
