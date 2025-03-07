class CajaRegistradora
    VALUE = [0.01, 0.02, 0.05, 0.1, 0.2, 0.5, 1, 2, 5, 10, 20, 50, 100, 200, 500]
    PATH_FILE = "retos/registradora/306cr/"

    def initialize(name="caja")
        @name = name
        @fileName = PATH_FILE + name + ".dat"
        @slot = {}
        VALUE.each do |value|
            @slot[value] = 0
        end
        if File.file?(@fileName)
            nueva_cr = Marshal.load(File.read(@fileName))
            self << nueva_cr
        end
    end

    def to_s
        result = @name + ": "
        @slot.each do |value,amount|
            if amount != 0
                result += "#{amount} x #{value}€ + "
            end
        end
        result = result[..-4]
        result += " = #{self.to_f}€"
        return result
    end

    def to_f
        total = 0.0
        @slot.each do |value,amount|
            total += amount * value
        end
        return total
    end

    def add(value,amount=1,*mas_depositos)
        @slot[value] += amount
        mas_depositos.each do |deposito|
            @slot[value] += deposito
        end
        save
    end

    def take(value,amount=1,*mas_retiradas)
        if @slot[value] >= amount
            @slot[value] -= amount
        end

        mas_retiradas.each do |retirada|
            if @slot[value] >= retirada
                @slot[value] -= retirada
            end
        end
        save
    end

    def <<(otra)
        otra.slot.each do |value,amount|
            otra.take(value,amount)
            self.add(value,amount)
        end
    end

    def slot
        return @slot
    end

    def save
        File.write(@fileName, Marshal.dump(self))
    end
end
