# 2+ parameters

def sponge(a,b,*o):
    print( f"Valores: {a},{b},{list(o)}" ) 
    # list convierte la tupla en lista

sponge(1,2,3)
sponge(1)
