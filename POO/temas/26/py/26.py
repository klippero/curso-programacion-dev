import random

class Primitiva:
    LONGITUD = 6
    MAXIMO = 49

    def __init__(self):
        self.premiados = []
        while len(self.premiados) < Primitiva.LONGITUD:
            nuevo = random.randint(1, Primitiva.MAXIMO)
            if nuevo not in self.premiados:
                self.premiados.append(nuevo)
        self.premiados.sort()
        
        self.complementario = random.randint(1, Primitiva.MAXIMO)
        while self.complementario in self.premiados:
            self.complementario = random.randint(1, Primitiva.MAXIMO)
        
        self.reintegro = random.randint(0, 9)
    
    def __str__(self):
        result = "PREMIADOS: " + " ".join(map(str, self.premiados))
        result += f"\nCOMPLEMENTARIO: {self.complementario}"
        result += f"\nREINTEGRO: {self.reintegro}"
        return result
    
    def get_reintegro(self):
        return self.reintegro

p = Primitiva()
print(p)

print(Primitiva.LONGITUD)
