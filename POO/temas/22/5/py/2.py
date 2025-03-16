frutas = ["piña", "coco", "higo", "dátil", "kiwi"]

encontrado = False
i = 0
while i < len(frutas) and not encontrado:
    if len(frutas[i]) == 5:
        encontrado = True
    else:
        i = i + 1

print(f"encontrado: {encontrado}")
print(f"i = {i}")
print(frutas[i])
