require_relative 'sol'

m1 = Matriz.new([[1,2],[3,4],[5,6]])
m2 = Matriz.new([[1,2,3],[3,4,5]])
m3 = m1 * m2

puts m1
puts "\n   *\n\n"
puts m2
puts "\n   =\n\n"
puts m3
puts

m1 = Matriz.new([[1,1,1],[1,2,1]])
m2 = Matriz.new([[2,1],[4,3],[5,-1]])
m3 = m1 * m2

puts m1
puts "\n   *\n\n"
puts m2
puts "\n   =\n\n"
puts m3
