print "N: "
n = gets.chomp.to_i
while ! ( n % 2 == 0 )
    print "no es par, dame otro N: "
    n = gets.chomp.to_i
end
