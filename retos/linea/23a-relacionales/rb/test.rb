require_relative 'sol'

l1 = Linea.new(18)
l2 = Linea.new(5)
l3 = Linea.new(18)

puts "> #{l1 > l2}"     # true
puts "< #{l1 < l2}"     # false
puts "== #{l1 == l3}"   # true
puts ">= #{l2 >= l3}"   # false
puts "<= #{l1 <= l3}"   # true
