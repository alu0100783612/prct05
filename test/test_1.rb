require "lib/fraciones.rb"
require 'test/unit'

class TestPoint < Test::Unit::TestCase
    
    def setup
        #la fraccion inicial es la 1/1 puesto que la 0/0 es una indeterminación
        @inicio= Fracciones.new(1,1)
        @medio= Fracciones.new(1,2)
        
    end 
    
    def test_simple
        assert_equal("1/1", @inicio.to_s)
        assert_equal("1/2", @medio.to_s)
    end
end