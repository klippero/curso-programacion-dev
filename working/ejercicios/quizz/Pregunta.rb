class Pregunta
    def initialize( preguntaDirecta, correctaDirecta, preguntaInversa, correctaInversa, preguntaNegativa, correctaNegativa, diccionario, diccionarioRespuestas )
        @preguntaDirecta = preguntaDirecta
        @correctaDirecta = correctaDirecta
        @preguntaInversa = preguntaInversa
        @correctaInversa = correctaInversa
        @preguntaNegativa = preguntaNegativa
        @correctaNegativa = correctaNegativa
        @diccionario = diccionario
        @diccionarioRespuestas = diccionarioRespuestas

        begin
            @pregunta = rand(@diccionario.length)
            tipos = [ :directa, :inversa, :negativa ]
            opcionesParaNegativa
            tipos.delete(:directa) if @preguntaDirecta == nil
            tipos.delete(:negativa) if @preguntaNegativa == nil
            tipos.delete(:negativa) if @respNegativa.empty?
            tipos.delete(:inversa) if @diccionario.values[@pregunta] == nil
# puts "<< @pregunta:#{@pregunta} #{@diccionario.keys[@pregunta]}=>#{@diccionario.values[@pregunta]} @tipo:#{@tipo} >>"
        end until not tipos.empty? # && tipos.include?(:inversa)  #quitar que incluye :directa
        @tipo = tipos.sample

#        @pregunta = 0
#       @tipo = :inversa
# puts "<< @pregunta:#{@pregunta} #{@diccionario.keys[@pregunta]}=>#{@diccionario.values[@pregunta]} @tipo:#{@tipo} >>"
        #       @tipo = :negativa

        @opcion = [@pregunta]
        if @tipo == :directa
            3.times do
                nuevo = rand(@diccionario.length)
                while @opcion.include?(nuevo) or valueInOpciones( nuevo, @opcion )
                    nuevo = rand(@diccionario.length)
                end
                @opcion << nuevo
            end
        elsif @tipo == :inversa
            3.times do
                nuevo = rand(@diccionario.length)
                while @opcion.include?(nuevo) or @diccionario.values[nuevo] == @diccionario.values[@pregunta]
                    nuevo = rand(@diccionario.length)
# print "<< nuevo:#{nuevo} "
                end
                @opcion << nuevo
            end
        else
            posicionAleatoria = @respNegativa.sample
            @C = @diccionarioRespuestas.keys[posicionAleatoria]
            preguntasValidas = @diccionarioRespuestas.values[posicionAleatoria]
            3.times do
                posNuevo = rand(preguntasValidas.length)
                nuevo = @diccionario.find_index { |k,_| k== preguntasValidas[posNuevo] }
                while @opcion.include?(nuevo)
                    posNuevo = rand(preguntasValidas.length)
                    nuevo = @diccionario.find_index { |k,_| k== preguntasValidas[posNuevo] }
                end
                @opcion << nuevo
            end
        end
        @opcion.shuffle!

        if @tipo == :directa
            @preguntaStr = @preguntaDirecta.gsub("#A",@diccionario.keys[@pregunta])
        elsif @tipo == :inversa
            @preguntaStr = @preguntaInversa.gsub("#B",@diccionario.values[@pregunta])
        else # :negativa
            @preguntaStr = @preguntaNegativa.gsub("#C",@C)
        end

        @opcionStr = []
        for i in 0 ... @opcion.size do
            @opcionStr << ( @tipo == :directa ? @diccionario.values[@opcion[i]] : @diccionario.keys[@opcion[i]] )
        end

        @respStr = [ "","","","" ]
    end

    attr_reader :preguntaStr
    attr_reader :opcionStr
    attr_reader :success
    attr_reader :respStr

    def to_s
        return "#{@pregunta}"
    end

    def preguntaId
        @pregunta
    end

    # devuelve un arrar con las opciones para pregunta negativa
    def opcionesParaNegativa
        @respNegativa = []

        for i in 0 .. @diccionarioRespuestas.keys.size - 1 do
            if @diccionarioRespuestas.values[i].length >= 3 && @diccionarioRespuestas.keys[i] != @diccionario.values[@pregunta]
                @respNegativa << i
            end
        end
    end

    def tresOpcionesParaNegativa?
        # buscar preguntas que:
        # - al menos haya 3 con la misma respuesta
        # - la respuesta sea distinta a la de esta
        return @diccionario.values.count(@diccionario.values[@pregunta]) >= 3
    end

    def valueInOpciones( nuevo, opciones )
        inOpciones = false
        i=0
        while not inOpciones and i<opciones.size
            inOpciones = @diccionario.values[@opcion[i]] == @diccionario.values[nuevo]
            i = i+1
        end
        return inOpciones
    end

    def keyInOpciones( nuevo, opciones )
        inOpciones = false
        i=0
        while not inOpciones and i<opciones.size
            inOpciones = @diccionario.keys[@opcion[i]] == @diccionario.keys[nuevo]
            i = i+1
        end
        return inOpciones
    end

    def pregunta
        preg = ""
        if @tipo == :directa
            preg << @preguntaDirecta.gsub("#A",@diccionario.keys[@pregunta]) << "\n"
            for i in 0 ... @opcion.size do
                preg << "#{i+1}) #{@diccionario.values[@opcion[i]]}\n"
            end
        else
            if @tipo == :inversa
                preg << @preguntaInversa.gsub("#B",@diccionario.values[@pregunta]) << "\n"
            else # :negativa
                preg << @preguntaNegativa.gsub("#C",@C) << "\n"
            end
            for i in 0 ... @opcion.size do
                preg << "#{i+1}) #{@diccionario.keys[@opcion[i]]}\n"
            end
        end
        return preg
    end

    def keysDeR( r )
        res = ""
        last = ""
        @diccionario.each { |key, value|
            if value == @diccionario.values[r]
                if res == ""
                    res << last
                else
                    res << ", #{last}"
                end
                last = key
            end
        }
        if res == ""
            res << last
        else
            res << " y #{last}"
        end
        return res
    end

    def correctaDirectaMays_( item )
        if @diccionario.values[item] == nil
            resp = ""
        else
            resp = @diccionario.values[item]
        end
        return resp
    end

    def correctaDirectaMays( item )
        if @diccionario.values[item] == nil
            resp = ""
        else
            resp = @correctaDirecta.gsub("#A",@diccionario.keys[item]).gsub("#B",@diccionario.values[item])
            resp.slice(0,1).capitalize + resp.slice(1..-1)
        end
        return resp
    end

    def correctaInversaMays( item, multi )
        resp = @correctaInversa.gsub("#B",@diccionario.values[item]).gsub("#A", ( multi ? keysDeR(item) : @diccionario.keys[item]) )
        return resp.slice(0,1).capitalize + resp.slice(1..-1)
    end

    def resp( r )
        @success = r == opcionCorrecta

        for i in 0 ... @respStr.size do
            if @tipo == :directa
                if ( @diccionarioRespuestas[@diccionario.values[@opcion[i]]] != nil && 
                        @diccionarioRespuestas[@diccionario.values[@opcion[i]]].length > 1 )
                    if i == opcionCorrecta
                        @respStr[i] = "#{@diccionario.keys[@opcion[i]]},..."    
                    else
                        @respStr[i] = "#{@diccionarioRespuestas[@diccionario.values[@opcion[i]]].sample},..."
                    end
                else
                    @respStr[i] = @diccionario.keys[@opcion[i]]
                end
            else
                @respStr[i] = @diccionario.values[@opcion[i]]
            end
        end
    end

    def respuesta( r )
        resp = ""
        if @tipo == :directa
            if @opcion[r] == @pregunta
                resp = "CORRECTO. " << correctaDirectaMays( @pregunta )
            else
                resp = "INCORRECTO. "
                resp << correctaInversaMays( @opcion[r], true ) << ".\n"
                resp << correctaDirectaMays( @pregunta )
            end
        elsif @tipo == :inversa
            if @opcion[r] == @pregunta
                resp = "CORRECTO. " << correctaInversaMays( @pregunta, false )
            else
                resp = "INCORRECTO. "
                resp << correctaDirectaMays( @opcion[r] ) << ".\n"
                resp << correctaInversaMays( @pregunta, false )
            end
        else # negativa
            if @opcion[r] == @pregunta
                resp = "CORRECTO. " << correctaDirectaMays( @pregunta )
            else
                resp = "INCORRECTO. "
                resp << correctaDirectaMays( @opcion[r] ) << ".\n"
                if @diccionario.values[@pregunta] == nil
                    resp << @correctaNegativa.gsub("#A", @diccionario.keys[@pregunta]).gsub("#C",@C)
                else
                    resp << @correctaNegativa.gsub("#B",@diccionario.values[@pregunta]).gsub("#A", @diccionario.keys[@pregunta]).gsub("#C",@C)
                end
            end
        end
        return resp
    end

    def show
        resp="#{@diccionario.keys[@pregunta]} => #{@diccionario.values[@pregunta]}\n"
        for i in 0 ... @opcion.size do
            resp << "#{i+1}) #{@diccionario.keys[@opcion[i]]} => #{@diccionario.values[@opcion[i]]}\n"
        end
        return resp
    end

    def opcionCorrecta
        @opcion.find_index(@pregunta)
    end
end