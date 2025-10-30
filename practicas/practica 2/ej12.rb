module GenericFactory
    def self.included(base) # Esto hace que cuando se incluye el mixin, se agreguen los métodos de clase a la clase que lo incluye
        base.extend(ClassMethods)
    end

    module ClassMethods # Creo un módulo para los métodos de clase que son los que envío a la clase. En este caso es solo un método pero si fueran más, conviene tenerlos todos agrupados.
        def create(**args)
            new(**args)
        end
    end
end

class SubClassA # Ahora se incluye el método con un Mixin
    include GenericFactory # Acá se ejecuta el método self.included del módulo GenericFactory
    attr_reader :param1, :param2

    def initialize(param1:, param2:)
        @param1 = param1
        @param2 = param2
    end
end

class SubClassB
    include GenericFactory
    attr_reader :param3

    def initialize(param3:)
        @param3 = param3
    end
end

obj_a = SubClassA.create(param1: "value1", param2: "value2")
puts "SubClassA - param1: #{obj_a.param1}, param2: #{obj_a.param2}"

obj_b = SubClassB.create(param3: "value3")
puts "SubClassB - param3: #{obj_b.param3}"