module BooleanOperations
    def opposite
        !self # Como TrueClass y FalseClass son solo instancias del valor booleano, simplemente hago not sobre self y obtengo una nueva instancia del valor contrario
    end
end

class TrueClass; include BooleanOperations end
class FalseClass; include BooleanOperations end

puts (true.opposite)
puts (false.opposite)
puts (true.opposite.opposite) # Como se retorna una instancia nueva del valor contrario, a la instancia obtenida se le puede ejecutar el mismo método
