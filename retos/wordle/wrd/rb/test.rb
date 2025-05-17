require_relative 'words'
require_relative 'sol'

print "0) spanish\n1) english"
choice = gets.chomp.to_i
w = WordleGame.new(choice)
