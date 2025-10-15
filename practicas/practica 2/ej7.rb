class Documento
    attr_accessor :creador, :contenido, :publico, :borrado

    def initialize(usuario, publico = true , contenido ='')
        self.creador = usuario
        self.publico = publico
        self.contenido = contenido
        self.borrado = false
    end

    def borrar
        self.borrado = true
    end

    def puede_ser_visto_por?(usuario)
        usuario.puede_ver? self
    end

    def puede_ser_modificado_por?(usuario)
        usuario.puede_modificar? self
    end

    def puede_ser_borrado_por?(usuario)
        usuario.puede_borrar? self
    end
end

class Usuario
    attr_accessor :nombre, :clave, :email

    def initialize(nombre, clave, email)
        @nombre = nombre
        @clave = clave
        @email = email
    end

    def puede_ver?(documento)
        documento.publico && !documento.borrado
    end

    def puede_modificar?(documento)
        documento.creador == self && !documento.borrado
    end

    def puede_borrar?(documento)
        false
    end

    def puede_borrar?(documento)
        false
    end
    
    def to_s
        return "#{@email} (#{self.class})"
    end
end

class Lector < Usuario
end

class Redactor < Usuario
    def puede_modificar?(documento)
        documento.creador == self && !documento.borrado
    end
end

class Director < Usuario
    def puede_ver?(documento)
        !documento.borrado
    end

    def puede_modificar?(documento)
        !documento.borrado
    end
end

class Administrador < Usuario
    def puede_ver?(documento)
        !documento.borrado
    end

    def puede_modificar?(documento)
        !documento.borrado
    end

    def puede_borrar?(documento)
        true
    end
end

lector = Lector.new("Juan", "clave123", "juan@example.com")
redactor = Redactor.new("Ana", "clave456", "ana@example.com")

puts lector.to_s
puts redactor.to_s