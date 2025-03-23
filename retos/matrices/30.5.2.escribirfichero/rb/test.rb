require_relative 'sol'

m1 = Matriz.new([[4,0],[7,4],[1,8]])
m1.writeFile("retos/matrices/30.5.2.escribirfichero/B.txt")

m2 = Matriz.new([])
m2.readFile("retos/matrices/30.5.2.escribirfichero/B.txt")
puts m2
