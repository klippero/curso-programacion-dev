encontrado = False
i = 1
while (i <= 900 and not encontrado):
    if i % 7 == 0 and i % 23 == 0 and i % 2 == 0:
        encontrado = True
    else:
        i = i + 1

print(f"encontrado: {encontrado}")
print(f"i: {i}")
