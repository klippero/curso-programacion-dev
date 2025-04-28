require_relative 'sol'

me = Metro.new(2938.34)
puts "#{me} = #{me.to(Kilometro)} = #{me.to(Centímetro)} = #{me.to(Milímetro)} = #{me.to(Hectómetro)}"

me = Metro.new(1)
puts "#{me} = #{me.to(Kilometro)} = #{me.to(Centímetro)} = #{me.to(Milímetro)} = #{me.to(Hectómetro)}"

me = Kilometro.new(1)
puts "#{me} = #{me.to(Hectómetro)} = #{me.to(Decámetro)} = #{me.to(Metro)} = #{me.to(Decímetro)} = #{me.to(Centímetro)} = #{me.to(Milímetro)}"
