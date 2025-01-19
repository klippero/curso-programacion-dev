from sol import *

mi_frigo = FrigorificoCombi()
print(mi_frigo)

mi_frigo.frigorifico().fija_temperatura(8)
print(mi_frigo)

mi_frigo.congelador().fija_temperatura()
print(mi_frigo)

mi_frigo.frigorifico().fija_temperatura(5)
print(mi_frigo)
