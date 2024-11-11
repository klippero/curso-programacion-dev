TEMAS = [
  {
    :label =>  'Entorno Ruby',
    :secciones =>  [
        { :label =>  'Intérprete' },
        { :label =>  'IDE Visual Studio Code' },
        { :label =>  'Debugger' }
    ]
  },
  { :label =>  'Clases y objetos' },
  { :label =>  'Métodos' },
  { :label =>  'Constructor' },
  { :label =>  'Atributos' },
  { :label =>  'Expresión #{}' },
  { :label =>  'Métodos que modifican el estado' },
  { :label =>  'Parámetros de un método' },
  { :label =>  'Parámetros de un constructor' },
  { :label =>  'Valores por defecto para parámetros' },
  { :label =>  'Lectura por teclado' },
  { :label =>  'return' },
  { :label =>  'to_s' },
  { :label =>  'Consultar un atributo' },
  { :label =>  'IRB =>  interactive Ruby' },
  { :label =>  'Operadores aritméticos' },
  { :label =>  'Operadores relacionales' },
  { :label =>  'if elsif else' },
  { :label =>  'Operadores lógicos' },
  { :label =>  'Métodos ? y return de expresiones lógicas' },
  { :label =>  'while' },
  { :label =>  'times / each' },
  { :label =>  'Listas' },
  { :label =>  'Implementando operadores' },
  { :label =>  'Asignación abreviada' },
  { :label =>  'Comentarios' },
  { :label =>  'Constantes' },
  { :label =>  'Diccionarios' },
  { :label =>  'Parámetros requeridos, por defecto y opcionales' },
  { :label =>  'Keyword arguments' },
  {
    :label =>  'Excepciones',
    :secciones =>  [
        { :label =>  'Qué son' },
        { :label =>  'Cómo se pueden controlar' },
        { :label =>  'Excepciones comunes' },
        { :label =>  'Cómo se lanzan' },
    ]
  },
  {
    :label =>  'Visibilidad de atributos (accessors)',
    :secciones =>  [
        { :label =>  'Lectura (getter)' },
        { :label =>  'Escritura (setter)' },
    ]
  },
  {
    :label =>  'Visibilidad de métodos',
    :secciones =>  [
        { :label =>  'Públicos' },
        { :label =>  'Privados' },
        { :label =>  'Protegidos' },
        { :label =>  'Visibilidad al final de la clase' },
    ]
  },
  {
    :label =>  'Herencia',
    :secciones =>  [
        { :label =>  'Qué es la herencia' },
        { :label =>  'Sobreescritura ó overriding (cambiar el comportamiento)' },
        { :label =>  'Sobreescritura ó overriding (extender el comportamiento con super)' },
        { :label =>  'Especialización en la construcción (comportamiento)' },
        { :label =>  'Especialización en la construcción (atributos)' },
    ]
  },
  { :label =>  'return implícito' }
]


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
    @id = fileName.rpartition(".").first
    @tema = self.getTema
    @coleccion = data[-2].split('_')[-1]
  end

  def to_s
    result = ""
    @paths.each do |path|
      result << ";" + path
    end
    return "#{@id};#{@coleccion};#{@tema};#{TEMAS[@tema][:label]}" + result
  end

  attr_reader :id, :paths, :coleccion

  def getTema
    result = ""
    i = 0
    while i<@id.length && "0123456789".include?(@id[i])
      result << @id[i]
      i = i + 1
    end
    return result.to_i
  end
end


directorio = "source"
retos = BibliotecaRetos.new

Dir.glob("#{directorio}/**/*").each do |ruta|
  if File.file?(ruta)
    retos << ruta
  end
end
puts retos
