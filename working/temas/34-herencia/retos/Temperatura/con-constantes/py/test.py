from sol import *

c = Celsius(10)
print(f"{c} = {c.to(Kelvin)} = {c.to(Fahrenheit)}")

f = Fahrenheit(-10)
print(f"{f} = {f.to(Kelvin)} = {f.to(Celsius)}")

k = Kelvin(0)
print(f"{k} = {k.to(Fahrenheit)} = {k.to(Celsius)}")


c1 = Celsius(9)
f1 = c1.to(Fahrenheit)
c2 = f1.to(Celsius)
print(f"{c1} = {f1} = {c2}")

k1 = Kelvin(300)
c3 = k1.to(Celsius)
f2 = k1.to(Fahrenheit)
print(f"{k1} = {c3} = {f2}")

f = Fahrenheit(23.2)
k = Kelvin(392)
r = f + k
print(f"{f} + {k} = {r}")

s2 = k1 + c1
print(f"{k1} + {c1} = {s2}")
k2 = c1.to(Kelvin)
print(f"{c1} = {k2}")
