n = int(input("Dame un número: "))
try:
    cociente = 100 // n
    print( f"el cociente es {cociente}" )
except:
    print("No se puede dividir entre 0")
