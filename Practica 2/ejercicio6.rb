class Rol

    def initialize()
    end

    def puede_leer?(documento)
    end

    def puede_modificar?(documento, user)
    end

    def puede_borrar?(documento)
    end

end

# Los Lectores pueden ver cualquier Documento que esté marcado como público
class Lector < Rol

    def puede_leer?(documento)
        documento.publico
    end

    def puede_modificar?(documento)
        false
    end

    def puede_borrar?(documento)
        false
    end

end

# Los Redactores pueden hacer todo lo que los Lectores y además pueden cambiar el contenido de los Documentos que ellos crearon.
class Redactor < Lector

    # NO FUNCA
    def puede_modificar?(documento, user)
        # Con equal pregunto si apuntan a la misma dir de memoria. NO se puede reescribir
        documento.creador.equal?(user) ? true : false
    end

end

# Los Directores pueden ver y cambiar el contenido de cualquier documento (público o privado, y creado por cualquier usuario), excepto aquellos que hayan sido borrados
class Director < Rol

    def puede_leer?(documento)
        true
    end

    def puede_modificar?(documento,user)
        documento.borrado ? false : true
    end

    def puede_borrar?(documento)
        false
    end

end

# Los Administradores pueden hacer lo mismo que los directores y además pueden borrar Documentos
class Administrador < Director
    
    def puede_borrar
        true
    end

end



class Usuario    
    # Lectura y escritura. Al declarar esto no hace falta implementar los metodos
    attr_accessor :rol, :email

    def initialize(email, rol)
        @email = email
        @rol = rol
    end

    def puede_ver?(doc)
        self.rol.puede_leer?(doc)
    end

    def puede_modificar?(doc)
        self.rol.puede_modificar?(doc)
    end

    def puede_ser_borrado_por?(doc)
        self.rol.puede_borrar?(doc)
    end

end



class Documento
    attr_accessor :creador, :contenido, :publico, :borrado
    def initialize(usuario, publico = true, contenido = '')
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


# user1 = Usuario.new('pepe@gmail.com',Lector.new)
# user2 = Usuario.new('lau@gmail.com', Redactor.new)
# user3 = Usuario.new('lau2@gmail.com', Director.new)
# user4 = Usuario.new('lau3@gmail.com', Administrador.new)
# doc1 = Documento.new(user1,false)
# doc2 = Documento.new(user2,true)
# doc3 = Documento.new(user3,true)
# doc4 = Documento.new(user1,false)
