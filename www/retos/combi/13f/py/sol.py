class MaquinaFrio:
    def __init__(self,temperatura,temperatura_recomendada):
        self.__temperatura_recomendada = temperatura_recomendada
        self.__puerta = "cerrada"
        self.__temperatura = temperatura

    def abre(self):
        self.__puerta = "abierta"

    def cierra(self):
        self.__puerta = "cerrada"

    def fija_temperatura(nueva_temperatura=self.__temperatura_recomendada):
        self.__temperatura = nueva_temperatura

    def para_temperatura_recomendada(self):
        return self.__temperatura_recomendada - self.__temperatura

    def temperatura(self):
        return self.__temperatura

    def to_s(self):
        return "Puerta #{self.__puerta} | #{self.__temperatura}ºC (#{para_temperatura_recomendada}ºC)"


class FrigorificoCombi
    def __init__(self):
        self.__frigorifico = MaquinaFrio.new(20,7)
        self.__congelador = MaquinaFrio.new(20,-18)
    end

    def to_s(self):
        return "Frigo #{self.__frigorifico} | Congelador #{self.__congelador}"
    end

    def frigorifico(self):
        return self.__frigorifico
    end

    def congelador(self):
        return self.__congelador
    end
end


mi_frigo = FrigorificoCombi.new
puts mi_frigo

mi_frigo.frigorifico.abre
puts mi_frigo

mi_frigo.congelador.fija_temperatura
puts mi_frigo

mi_frigo.congelador.abre
puts mi_frigo

mi_frigo.frigorifico.fija_temperatura(6)
puts mi_frigo
