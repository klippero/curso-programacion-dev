require_relative 'sol'

u = Gigabyte.new(3)
puts u.to(Megabyte)

u2 = Megabyte.new(1024)
puts u + u2
puts u2 + u
