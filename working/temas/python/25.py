class Entero:
    def __init__(self,n):
        self.__n = n

    def es_primo(self):
        # devuelve si el número es primo
        i = 2
        encontrado = False
        while i < self.__n and not encontrado:
            if self.__n % i == 0:   # n es divisible entre i
                encontrado = True
            else:
                i = i + 1
        return not encontrado and self.__n > 1


n = int( input( "N: " ) )
e = Entero(n)
print( e.es_primo() )


'''
Si return devuelve !encontrado y no se comprueba
que self.__n es mayor que 1, el código funcionará
mal pues devolverá true para los números 0 y 1
que no son primos. Es necesario añadir en el
return la condición:

    && self.__n > 1

=end
'''
