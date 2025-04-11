class Question
    attr_reader :pregunta
    attr_reader :opcion

    def initialize
        @scope = rand(QuizzMgr.getDB.length)
        bc = QuizzMgr.getDB[@scope]
        begin
            @pregunta = {}
            @pregunta[:id] = rand(bc[:diccionario].length)
            tipos = [ :directa, :inversa, :negativa ]
            on = opcionesParaNegativa(bc,@pregunta[:id])
            tipos.delete(:directa) if bc[:preguntaDirecta] == nil
            tipos.delete(:negativa) if bc[:preguntaNegativa] == nil
            tipos.delete(:negativa) if on.empty?
            tipos.delete(:inversa) if bc[:diccionario].values[@pregunta[:id]] == nil
        end until not tipos.empty?
        @pregunta[:tipo] = tipos.sample

        @opcion = [{:id => @pregunta[:id]}]
        if @pregunta[:tipo] == :directa
            3.times do
                nuevo = rand(bc[:diccionario].length)
                while arrayIdsOpcion.include?(nuevo) or valueInOpciones( bc, nuevo, @opcion )
                    nuevo = rand(bc[:diccionario].length)
                end
                @opcion << {:id => nuevo}
            end
        elsif @pregunta[:tipo] == :inversa
            3.times do
                nuevo = rand(bc[:diccionario].length)
                while arrayIdsOpcion.include?(nuevo) or bc[:diccionario].values[nuevo] == bc[:diccionario].values[@pregunta[:id]]
                    nuevo = rand(bc[:diccionario].length)
                end
                @opcion << {:id => nuevo}
            end
        else
            posicionAleatoria = on.sample
            @pregunta[:C] = bc[:diccionarioRespuestas].keys[posicionAleatoria]
            preguntasValidas = bc[:diccionarioRespuestas].values[posicionAleatoria]
            3.times do
                posNuevo = rand(preguntasValidas.length)
                nuevo = bc[:diccionario].find_index { |k,_| k== preguntasValidas[posNuevo] }
                while arrayIdsOpcion.include?(nuevo)
                    posNuevo = rand(preguntasValidas.length)
                    nuevo = bc[:diccionario].find_index { |k,_| k== preguntasValidas[posNuevo] }
                end
                @opcion << {:id => nuevo}
            end
        end

        if @pregunta[:tipo] == :directa
            @pregunta[:str] = bc[:preguntaDirecta].gsub("#A",bc[:diccionario].keys[@pregunta[:id]])
        elsif @pregunta[:tipo] == :inversa
            @pregunta[:str] = bc[:preguntaInversa].gsub("#B",bc[:diccionario].values[@pregunta[:id]])
        else # :negativa
            @pregunta[:str] = bc[:preguntaNegativa].gsub("#C",@pregunta[:C])
        end

        for i in 0 ... @opcion.size do
            @opcion[i][:str] = ( @pregunta[:tipo] == :directa ? bc[:diccionario].values[@opcion[i][:id]] : bc[:diccionario].keys[@opcion[i][:id]] )
        end

        for i in 0 ... @opcion.size do
            if @pregunta[:tipo] == :directa
                if ( bc[:diccionarioRespuestas][bc[:diccionario].values[@opcion[i][:id]]] != nil && 
                        bc[:diccionarioRespuestas][bc[:diccionario].values[@opcion[i][:id]]].length > 1 )
                    if i == 0
                        @opcion[i][:respStr] = "#{bc[:diccionario].keys[@opcion[i][:id]]},..."    
                    else
                        @opcion[i][:respStr] = "#{bc[:diccionarioRespuestas][bc[:diccionario].values[@opcion[i][:id]]].sample},..."
                    end
                else
                    @opcion[i][:respStr] = bc[:diccionario].keys[@opcion[i][:id]]
                end
            else
                @opcion[i][:respStr] = bc[:diccionario].values[@opcion[i][:id]]
            end
        end

        @opcion.shuffle!
        @pregunta[:success] = opcionCorrecta
    end

    def arrayIdsOpcion
        resp = []
        @opcion.each { |item|
            resp << item[:id]
        }
        return resp
    end

    def valueInOpciones( bc, nuevo, opciones )
        inOpciones = false
        i=0
        while not inOpciones and i<opciones.size
            inOpciones = bc[:diccionario].values[@opcion[i][:id]] == bc[:diccionario].values[nuevo]
            i = i+1
        end
        return inOpciones
    end

    def opcionesParaNegativa(bc,pregunta)
        respNegativa = []
        for i in 0 ... bc[:diccionarioRespuestas].keys.size do
            if bc[:diccionarioRespuestas].values[i].length >= 3 &&
               bc[:diccionarioRespuestas].keys[i] != bc[:diccionario].values[pregunta]
               respNegativa << i
            end
        end
        return respNegativa
    end

    def opcionCorrecta
        i=0
        while i<@opcion.size and  @opcion[i][:id] != @pregunta[:id]
            i = i+1
        end
        return i
    end

    def to_s
        resp = "#{@pregunta[:str]}\n"
        for i in 0 ... @opcion.size do
            resp << "#{i}#{i==@pregunta[:success]?'>':'.'} #{@opcion[i][:str]} (#{@opcion[i][:respStr]})\n"
        end
        return resp
    end
end