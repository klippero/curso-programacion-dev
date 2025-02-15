class Bombo
  def initialize
    @b=[]
    i=1
    while i<=10
      @b << i
      i=i+1
    end

    self.mover
  end
  def extrae_bola
    p=1
    n=@b[p]
    @b.delete_at(p)
    return n
  end
  def mover
    @b.length.times do |i|
      posR=rand(@b.length)
      aux=@b[i]
      @b[i]=@b[posR]
      @b[posR]=aux
    end
  end
  def to_s
    return "#{@b}"
  end
end

class Primitiva
  def initialize()
    @p=[]
    @b=Bombo.new
    6.times do
      @p << @b.extrae_bola
      puts "\n\nDEBUG:::: \nBOMBO" + @b.to_s + "\nPREMIADOS:#{@p}"
    end
    @c=@b.extrae_bola
    @r=rand(0..9)
  end

  def to_s
    return "PREMIADOS: #{@p} \nCOMPLEMENTARIO: #{@c} \nREINTEGRO: #{@r} \nBOMBO: #{@b}"
  end
end

p = Primitiva.new
puts p
