require_relative 'sol'

m1 = Matriz.new([[1,2],[3,4],[5,6]])
m2 = Matriz.new([[1,2],[3,4]])

begin
    m3 = m2 * m1
rescue => e
    puts "Error: #{e.message}"
end
