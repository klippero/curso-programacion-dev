from sol import *

m1 = Matriz([[4,0],[7,4],[1,8]])
m1.writeFile("retos/matrices/30.5.2.escribirfichero/B.txt")

m2 = Matriz([])
m2.readFile("retos/matrices/30.5.2.escribirfichero/B.txt")
print(m2,end="")
