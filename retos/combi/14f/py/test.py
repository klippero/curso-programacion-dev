from sol import *

mi_frigo = FrigorificoCombi()
print(mi_frigo)

mi_frigo.frigorifico().abre()
print(mi_frigo)

mi_frigo.congelador().fija_temperatura()
print(mi_frigo)

mi_frigo.congelador().abre()
print(mi_frigo)

mi_frigo.frigorifico().fija_temperatura(6)
print(mi_frigo)
