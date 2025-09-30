n = int(input("Dame un número: "))
try:
    print(100 / n)
except ZeroDivisionError:
    print("No se puede dividir entre 0")
