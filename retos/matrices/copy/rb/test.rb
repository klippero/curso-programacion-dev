require_relative 'sol'

m1 = Matrix.new([[0,2,3],[3,4,5]])
m2 = Matrix.new([[6,5,1],[6,5,1]])
m3 = m1 + m2

puts m1
puts "\n   +\n\n"
puts m2
puts "\n   =\n\n"
puts m3
puts "\n\n"

m4 = Matrix.new([[7,8,3],[3,4,5]])
m5 = Matrix.new([[6,5,1],[2,4,5]])
m6 = m4 - m5

puts m4
puts "\n   -\n\n"
puts m5
puts "\n   =\n\n"
puts m6
