require_relative 'sol'

mi_frigo = FrigorificoCombi.new(15)
mi_frigo.muestra_estado

mi_frigo = FrigorificoCombi.new
mi_frigo.muestra_estado

mi_frigo.fija_temperatura_frigo
mi_frigo.muestra_estado

mi_frigo.fija_temperatura_frigo(6)
mi_frigo.muestra_estado

mi_frigo.fija_temperatura_congelador
mi_frigo.muestra_estado

mi_frigo.fija_temperatura_congelador(-17)
mi_frigo.muestra_estado
