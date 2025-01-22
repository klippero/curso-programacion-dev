class Entero
    def initialize(n)
        @n = n
    end

    def primo?
        i = 2
        encontrado = false
        while i < @n and !encontrado
            if @n % i == 0
                encontrado = true
            else
                i = i + 1
            end
        end
        return !encontrado && @n > 1
    end
end


=begin

Si return devuelve !encontrado y no se comprueba
que @n es mayor que 1, el código funcionará
mal pues devolverá true para los números 0 y 1
que no son primos. Es necesario añadir en el
return la condición:

    && @n > 1

=end
