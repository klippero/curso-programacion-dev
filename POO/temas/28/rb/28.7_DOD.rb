# opcional no puede preceder
# a uno por defecto

def sponge(a=7,*o,b=9)
    puts "Valores: #{a}, #{o}, #{b}"
end

sponge(1,2)
