class BaseConocimientoParejas
    def initialize( preguntaDirecta, correctaDirecta, preguntaInversa, correctaInversa, preguntaNegativa, correctaNegativa, diccionario )
        @preguntaDirecta = preguntaDirecta
        @correctaDirecta = correctaDirecta
        @preguntaInversa = preguntaInversa
        @correctaInversa = correctaInversa
        @preguntaNegativa = preguntaNegativa
        @correctaNegativa = correctaNegativa
        @diccionario = diccionario

        @diccionarioRespuestas = Hash.new
        @diccionario.each { |preg, resp|
            if resp != nil
                @diccionarioRespuestas[resp] = [] if not @diccionarioRespuestas.key?(resp)
                @diccionarioRespuestas[resp] << preg 
            end
        }
    end

    def damePregunta
#        begin
            pregunta = Pregunta.new( @preguntaDirecta, @correctaDirecta, @preguntaInversa, @correctaInversa, @preguntaNegativa, @correctaNegativa, @diccionario, @diccionarioRespuestas )
#        end until not participante.yaPreguntado?( pregunta )
#        participante.addPregunta( pregunta )
        return pregunta
    end
end