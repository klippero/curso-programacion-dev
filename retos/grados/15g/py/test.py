from sol import *

c = Celsius(10)
print(f"{c} = {c.to_Kelvin()} = {c.to_Fahrenheit()}")

f = Fahrenheit(-10)
print(f"{f} = {f.to_Kelvin()} = {f.to_Celsius()}")

k = Kelvin(0)
print(f"{k} = {k.to_Fahrenheit()} = {k.to_Celsius()}")
