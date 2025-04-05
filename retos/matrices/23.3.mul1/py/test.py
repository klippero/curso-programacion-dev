from sol import *

m1 = Matriz([[4,3,2],[1,0,0],[2,4,6]])
m2 = Matriz([[2,1],[4,3],[5,-1]])
m3 = m1 * m2

print(m1)
print("\n   *\n")
print(m2)
print("\n   =\n")
print(m3)

print("\n***********************************\n\n")

m1 = Matriz([[1,2],[3,4],[5,6]])
m2 = Matriz([[1,2,3],[3,4,5]])
m3 = m1 * m2

print(m1,end="")
print("\n   *\n")
print(m2,end="")
print("\n   =\n")
print(m3,end="")

print("\n***********************************\n\n")

m1 = Matriz.new([[1,1,1],[1,2,1]])
m2 = Matriz.new([[2,1],[4,3],[5,-1]])
m3 = m1 * m2

puts m1
puts "\n   *\n\n"
puts m2
puts "\n   =\n\n"
puts m3
