puts "Ancestros de la clase String:"
puts String.ancestors # Muestra los ancestros de una clase.

puts "Métodos de la clase String:"
puts String.methods(false) # Muestra los métodos de una clase. Incluye los métodos heredados, si se le envía false los excluye. No muestra los métodos privados.
puts String.private_methods(false) # Muestra los métodos privados de una clase.

puts "Métodos de instancia de la clase String:"
puts String.instance_methods(false) # Muestra los métodos de instancia de una clase. 

class Algo
    @var_clase = "Variable de clase"
    @@var_clase_compartida = "Variable de clase compartida"
    
    def initialize
        @var_instancia = "Variable de instancia"
    end
end

puts "Variables de clase de Algo:"
puts Algo.instance_variables # No muestra la @var_instancia porque no se creó una instancia

obj = Algo.new
puts "Variables de instancia de obj:"
puts obj.instance_variables # Muestra la @var_instancia

puts "Accediendo a la variable de instancia para leerla:"
puts obj.instance_variable_get(:@var_instancia) # Accede a la variable de instancia

obj.instance_variable_set(:@var_instancia, "Nuevo valor") # Modifica la variable de instancia
puts "Accediendo a la variable de instancia para escribirla:"
puts obj.instance_variable_get(:@var_instancia) # Verifica el cambio