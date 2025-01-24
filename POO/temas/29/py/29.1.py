class Frigo:
    def __init__(self, color, temperatura):
        self.color = color
        self.temperatura = temperatura

    def __str__(self):
        return f"Color {self.color} | {self.temperatura}ºC"

f1 = Frigo(color="rojo", temperatura=19)
print( f1 )

f2 = Frigo(temperatura=17, color="blanco")
print( f2 )
