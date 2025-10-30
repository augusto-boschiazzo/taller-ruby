class GenericFactory
    def self.create(**args)
        new(**args)
    end

    def initialize(**args)
        raise NotImplementedError
    end
end

class SubClassA < GenericFactory # Se usa la clase GenericFactory para crear objetos de otra clase de una manera especifica, en este caso usando herencia
    attr_reader :param1, :param2

    def initialize(param1:, param2:)
        @param1 = param1
        @param2 = param2
    end
end

class SubClassB < GenericFactory
    attr_reader :param3

    def initialize(param3:)
        @param3 = param3
    end
end

obj_a = SubClassA.create(param1: "value1", param2: "value2")
puts "SubClassA - param1: #{obj_a.param1}, param2: #{obj_a.param2}"

obj_b = SubClassB.create(param3: "value3")
puts "SubClassB - param3: #{obj_b.param3}"