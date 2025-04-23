from sol import *

me = Metro(2938.34)
print(f"{me} = {me.to(Kilometro)} = {me.to(Centímetro)} = {me.to(Milímetro)} = {me.to(Hectómetro)}")

me = Metro(1)
print(f"{me} = {me.to(Kilometro)} = {me.to(Centímetro)} = {me.to(Milímetro)} = {me.to(Hectómetro)}")

me = Kilometro(1)
print(f"{me} = {me.to(Hectómetro)} = {me.to(Decámetro)} = {me.to(Metro)} = {me.to(Decímetro)} = {me.to(Centímetro)} = {me.to(Milímetro)}")
