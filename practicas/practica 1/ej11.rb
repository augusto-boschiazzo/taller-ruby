class Clase
    def metodo_publico
        puts "método público"
    end

    private

    def metodo_privado
        puts "método privado"
    end
end

obj = Clase.new
obj.public_send(:metodo_publico)

begin
    obj.public_send(:metodo_privado) # La diferencia entre send y public_send es que public_send no puede llamar a métodos privados
rescue NoMethodError => e
    puts e.message # Si se intentan llamar, van a lanzar el error  NoMethodError
end