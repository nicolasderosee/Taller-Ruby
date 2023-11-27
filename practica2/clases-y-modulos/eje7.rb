#Luego de implementar el ejercicio anterior, modificalo para que los usuarios implementen el
#método #to_s que debe retornar el atributo usuario (o email, según hayas decidido utilizar) y
#el rol que posee

class Documento
    #atributos que pueden ser leidos y modificados
    attr_accessor :creador, :contenido, :publico, :borrado
  
    #constructor que inicializa el doc
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
      usuario.puede_ver?(self)
    end
  
    def puede_ser_modificado_por?(usuario)
      usuario.puede_modificar?(self)
    end
  
    def puede_ser_borrado_por?(usuario)
      usuario.puede_borrar?(self)
    end
end
  
class Usuario
    attr_accessor :nombre, :clave, :email, :rol
  
    def initialize(nombre, clave, email, rol)
      self.nombre = nombre
      self.clave = clave
      self.email = email
      self.rol = rol
    end
  
    def puede_ver?(documento)
      documento.publico
    end
  
    def puede_modificar?(documento)
      false
    end
  
    def puede_borrar?(documento)
      false
    end
  
    def to_s
      "#{email} (#{rol})"
    end
end

class Lector < Usuario
    def puede_modificar?(documento)
      false
    end
end
  
class Redactor < Usuario
    def puede_modificar?(documento)
      documento.creador == self
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
  
class Administrador < Director
    def puede_borrar?(documento)
      !documento.borrado
    end
end
  
  
  # Crear usuarios con diferentes roles
  lector = Lector.new("usuario_lector", "clave_lector", "lector@example.com","lector")
  redactor = Redactor.new("usuario_redactor", "clave_redactor", "redactor@example.com","redactor")
  director = Director.new("usuario_director", "clave_director", "director@example.com","director")
  admin = Administrador.new("usuario_admin", "clave_admin", "admin@example.com","admin")
  
  # Crear un documento
  documento = Documento.new(redactor, true, "Contenido público")
  
  # Verificar las capacidades de acceso y modificación según el rol
  puts "Lector: #{lector.to_s}"
  puts "Redactor: #{redactor.to_s}"
  puts "Director: #{director.to_s}"
  puts "Administrador: #{admin.to_s}"