from sol import *

c = float(input("ºC: "))
grados_c = Celsius(c)

print( f"{c}ºC = {grados_c.to_Fahrenheit()}ºF" )
