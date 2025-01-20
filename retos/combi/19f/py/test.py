from sol import *

un_frigo = FrigorificoCombi(21)
print(un_frigo)

un_frigo.frigorifico().abre()
print(un_frigo)

un_frigo.frigorifico().cierra()
print(un_frigo)

un_frigo.congelador().abre()
print(un_frigo)

un_frigo.congelador().cierra()
print(un_frigo)
print()

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

print(f"La temperatura es ok: {mi_frigo.ok()}")
mi_frigo.frigorifico().fija_temperatura(7)
print(mi_frigo)
print(f"La temperatura es ok: {mi_frigo.ok()}")
