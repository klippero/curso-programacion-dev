print("HIJO 1")
nombre_hijo1 = input("Nombre: ")
edad_hijo1 = int(input("Edad: "))

print()
print("HIJO 2")
nombre_hijo2 = input("Nombre: ")
edad_hijo2 = int(input("Edad: "))

print()
tu_edad = int(input("Tu edad: "))
print()

print(f"{nombre_hijo1} nació cuando tenías {tu_edad - edad_hijo1} años")
print(f"{nombre_hijo2} nació cuando tenías {tu_edad - edad_hijo2} años")

if edad_hijo1 > edad_hijo2:
    print(f"Cuando nació {nombre_hijo2}, {nombre_hijo1} tenía {edad_hijo1 - edad_hijo2} años")
elif edad_hijo2 > edad_hijo1:
    print(f"Cuando nació {nombre_hijo1}, {nombre_hijo2} tenía {edad_hijo2 - edad_hijo1} años")
else:
    print(f"{nombre_hijo1} y {nombre_hijo2} nacieron el mismo año")
