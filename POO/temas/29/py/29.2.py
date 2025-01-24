class Frigo:
    def __init__(self,color="blanco", temperatura=17):
        self.color = color
        self.temperatura = temperatura

    def __str__(self):
        return f"Color {self.color} | {self.temperatura}ºC"

f1 = Frigo(color="rojo", temperatura=19)
print( f1 )

f2 = Frigo()
print( f2 )

f3 = Frigo(temperatura=16)
print( f3 )
