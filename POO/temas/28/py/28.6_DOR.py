# default with optional

# en python se pueden mezclar positional con keyword parameters

def sponge(a=7, *args, b):
    print(f"Valores: {a}, {args}, {b}")

sponge(1, 2, b=3)
sponge(1, 2, 3, 4, 5, b=6)
sponge(2, b=8)