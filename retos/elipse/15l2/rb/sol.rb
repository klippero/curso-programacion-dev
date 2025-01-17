class Elipse
    def initialize(radio1,radio2)
        @radio1 = radio1
        @radio2 = radio2
    end

    def area
        return Math::PI * @radio1 * @radio2
    end
end
