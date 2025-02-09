require_relative 'sol'

print "n: "
n = Entero.new(gets.chomp.to_i)
f = n.factores
puts "Los factores de #{n} son: #{f}"

n2 = Entero.new
n2.desfactoriza!(f)
puts "Desfactorizando #{f} resulta #{n2}"
