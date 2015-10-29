class Fracciones 

attr_reader :numerador, :denominador

    def initialize(numerador,denominador)
        @numerador, @denominador= numerador,denominador
    end

    def to_s
       "#{@numerador}/#{@denominador}"
    end
    
    # operacion de reduccion 
    def gcd(u, v)
      u, v = u.abs, v.abs
      while v != 0
        u, v = v, u % v
      end
      u
      
    end

    def +(other)
        
        dr=@denominador*other.denominador
    
    denominadorcalculado=dr/gcd(@denominador,other.denominador)
    
    
    
    calculo1=denominadorcalculado/@denominador
    num1=calculo1*@numerador

    calculo2=denominadorcalculado/other.denominador
    num2=calculo2*other.numerador
    
    
    Fracciones.new(num1+num2,denominadorcalculado)
    end
    
    def -(other)
        
        dr=@denominador*other.denominador
    
    denominadorcalculado=dr/gcd(@denominador,other.denominador)
    
    
    
    calculo1=denominadorcalculado/@denominador
    num1=calculo1*@numerador

    calculo2=denominadorcalculado/other.denominador
    num2=calculo2*other.numerador
    
    
    Fracciones.new(num1-num2,denominadorcalculado)
    end
def * (other)
    
    Fracciones.new(@numerador*other.numerador, @denominador*other.denominador)
    
end
end 