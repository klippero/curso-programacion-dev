from sol import *

l1 = Linea(18)
l2 = Linea(5)
l3 = Linea(18)

print(f"> {l1 > l2}")     # true
print(f"< {l1 < l2}")     # false
print(f"== {l1 == l3}")   # true
print(f">= {l2 >= l3}")   # false
print(f"<= {l1 <= l3}")   # true
