require_relative 'sol'

mi_frigo = FrigorificoCombi.new
mi_frigo.muestra_estado
mi_frigo.fija_temperatura_frigo(4)
mi_frigo.muestra_estado
mi_frigo.fija_temperatura_congelador(-18)
mi_frigo.muestra_estado
