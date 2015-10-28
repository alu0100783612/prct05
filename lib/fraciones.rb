class Fracciones 

attr_reader :numerador, :denominador

    def initialize(numerador,denominador)
        @numerador, @denominador= numerador,denominador
    end

    def to_s
       "#{@numerador}/#{@denominador}"
    end
    
end
