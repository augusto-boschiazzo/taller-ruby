module Countable
    def self.prepended(base)
        base.instance_methods(false).each do |method_name|          # Itera sobre los métodos definidos en la clase y los redefine
            define_method(method_name) do |*args, &block|           # El operador & recibe un bloque
                self.class.method_invocations[method_name] ||= 0
                self.class.method_invocations[method_name] += 1
                super(*args, &block)                                # Llama al método original y le envía los argumentos y el bloque
            end
        end

        base.define_singleton_method(:method_invocations) do
            @method_invocations ||= {}
        end
    end

    def count_invocations_of(method_name)
        self.class.method_invocations[method_name] || 0
    end

    def invoked?(method_name)
        count_invocations_of(method_name) > 0
    end

    def invoked(method_name)
        count_invocations_of(method_name)
    end
end

class Saludar
    def hola
        puts "Hola"
    end

    def adios
        puts "Adiós"
    end

    prepend Countable
end

class String; prepend Countable; end
class Array; prepend Countable; end

str = "hello"
arr = [1, 2, 3]

puts str.upcase
puts str.downcase
arr.push(4)
puts arr.pop
arr.push(5)

puts "String 'upcase' invoked? #{str.invoked?(:upcase)}"
puts "String 'upcase' invocation count: #{str.invoked(:upcase)}"
puts "Array 'push' invoked? #{arr.invoked?(:push)}"
puts "Array 'push' invocation count: #{arr.invoked(:push)}"

saludo = Saludar.new
saludo.hola
saludo.adios
saludo.hola

puts "Saludar 'hola' invoked? #{saludo.invoked?(:hola)}"
puts "Saludar 'hola' invocation count: #{saludo.invoked(:hola)}"
puts "Saludar 'adios' invoked? #{saludo.invoked?(:adios)}"
puts "Saludar 'adios' invocation count: #{saludo.invoked(:adios)}"