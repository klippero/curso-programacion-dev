require_relative 'sol'

print "Radio 1: "
r1 = gets.chomp.to_f

print "Radio 2: "
r2 = gets.chomp.to_f

e = Elipse.new(r1,r2)
puts "El área de una elipse de radios #{r1} y #{r2} es #{'%.4f' % e.area}"
