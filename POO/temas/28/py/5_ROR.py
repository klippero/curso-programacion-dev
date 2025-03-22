# opcionales en el medio
# realmente no se puede hacer ya que la esponja en python
# se expante hasta el final de parámetros
# el truco de chatgpt es para considerar el keyword parameter b

def sponge(a, *o, b=None):
    if b is None:
        if len(o) > 0:
            b = o[-1]
            o = o[:-1]
    print(f"Valores: {a}, {list(o)}, {b}")

sponge(1,2)
sponge(1,2,3,4,5)
sponge(2)