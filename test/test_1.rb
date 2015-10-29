require "lib/fraciones.rb"
require 'test/unit'

class TestPoint < Test::Unit::TestCase
    
    def setup
        #la fraccion inicial es la 1/1 puesto que la 0/0 es una indeterminación
        @inicio= Fracciones.new(1,1)
        @medio= Fracciones.new(1,2)
        @otro=Fracciones.new(2,5)
    end 
    
    def test_simple
        assert_equal("1/1", @inicio.to_s)
        assert_equal("1/2", @medio.to_s)
        assert_equal("9/10", (@medio+@otro).to_s)
        assert_equal("1/10", (@medio-@otro).to_s)
        assert_equal("2/10", (@medio*@otro).to_s)
        assert_equal("5/4", (@medio/@otro).to_s)
    end
    
    def sumar
        assert_equal("9/10", (@medio+@otro).to_s)
    end
    
    def restar
         assert_equal("1/10", (@medio-@otro).to_s)
    end
    
    def multiplicar
        assert_equal("2/10", (@medio*@otro).to_s)
    end
    def dividir
        assert_equal("5/4", (@medio/@otro).to_s)
    end
end