class BibliotecaRetos
  def initialize
    @retos = []
  end

  def getReto(id)
    found = false
    i = 0
    while !found && i<@retos.length
      if @retos[i].id == id
        found = true
      else
        i += 1
      end
    end
    @retos[i]
  end

  def <<(str)
    nuevo = Reto.new(str)
    existente = getReto(nuevo.id)
    if existente.nil?
      @retos << nuevo
    else
      if !(nuevo.coleccion == existente.coleccion)
        puts 'ERROR'
      else
        existente.paths << nuevo.paths[0]
      end
    end
  end

  def to_s
    result = ""
    @retos.each do |reto|
      result += reto.to_s + "\n"
    end
    result
  end
end


class Reto
  def initialize(str)
    @paths = [str]
    data = str.split('/')
    fileName = data[-1]
    @id = fileName.split('.')[0]
    @coleccion = data[-2].split('_')[-1]
  end

  def to_s
    return "#{@id} / #{@coleccion} #{@paths}"
  end

  attr_reader :id, :paths, :coleccion
end


directorio = "source"
retos = BibliotecaRetos.new

Dir.glob("#{directorio}/**/*").each do |ruta|
  if File.file?(ruta)
    retos << ruta
  end
end
puts retos
