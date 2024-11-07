require_relative '22est-media'

lista = ListaEnteros.new( [8,14,9,12,14,12,15,11,12,8,10,14,12,9,12] )
puts lista.media.round(2)

puts ListaEnteros.new([1]).media
puts ListaEnteros.new([2,2,2,4,5]).media
