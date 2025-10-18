module Reverso
    def di_tcejbo
        return self.object_id.to_s.reverse
    end

    def ssalc
        return self.class.name.reverse
    end
end

class Persona
    include Reverso
end

obj = Persona.new

puts obj.di_tcejbo
puts obj.ssalc