n = int(input("Número: "))
divisor = int(input("Divisor: "))

if n % divisor == 0:
    print(f"{divisor} ES DIVISOR de {n}")
else:
    print(f"{divisor} NO ES DIVISOR de {n}")