require_relative 'sol'

print "n: "
n = Entero.new(gets.chomp.to_i)
f = n.factores
puts(f)

n2 = Entero.new(f)
n2.desfactoriza!(f)
puts(n2)
