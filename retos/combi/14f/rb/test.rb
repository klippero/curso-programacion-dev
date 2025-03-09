require_relative 'sol'

mi_frigo = FrigorificoCombi.new
puts mi_frigo

mi_frigo.frigorifico.abre
puts mi_frigo

mi_frigo.congelador.fija_temperatura
puts mi_frigo

mi_frigo.congelador.abre
puts mi_frigo

mi_frigo.frigorifico.fija_temperatura(6)
puts mi_frigo
