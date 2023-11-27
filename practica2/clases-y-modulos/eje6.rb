=begin
Modelá con una jerarquía de clases la siguiente situación:
Los usuarios finales de una aplicación tienen los atributos básicos que permiten identificarlos
(usuario, clave, email ‑ los que consideres necesarios), y un rol que determina qué operaciones
pueden hacer. 
Los roles posibles son: Lector, Redactor, Director y Administrador. 
Cada usuario gestiona Documentos según su rol le permita, acorde a las siguientes reglas:
• Los Lectores pueden ver cualquier Documento que esté marcado como público.
• Los Redactores pueden hacer todo lo que los Lectores y además pueden cambiar 
el contenido de los Documentos que ellos crearon.
• Los Directores pueden ver y cambiar el contenido de cualquier documento 
(público o privado, y creado por cualquier usuario), excepto aquellos que hayan sido borrados.
• Los Administradores pueden hacer lo mismo que los directores y además pueden borrar
Documentos.
Utilizando el siguiente código para la clase Documento, implementá las clases que consideres
necesarias para representar a los usuarios y sus roles, completando la funcionalidad 
aquí presente:
=end

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
    attr_accessor :nombre, :clave, :email
  
    def initialize(nombre, clave, email)
      self.nombre = nombre
      self.clave = clave
      self.email = email
    end
  
    def puede_ver?(documento)
    # Los Lectores pueden ver cualquier documento público
      documento.publico
    end
  
    def puede_modificar?(documento)
    # Por defecto, los usuarios no pueden modificar documentos
      false
    end
  
    def puede_borrar?(documento)
    # Por defecto, los usuarios no pueden borrar documentos
      false
    end
end
  
class Lector < Usuario
    def puede_modificar?(documento)
    # Los Lectores no pueden modificar documentos
      false
    end
end
  
class Redactor < Usuario
    def puede_modificar?(documento)
     # Los Redactores pueden modificar documentos que ellos crearon
      documento.creador == self
    end
end
  
class Director < Usuario
    def puede_ver?(documento)
    # Los Directores pueden ver cualquier documento si no esta borrado
      !documento.borrado
    end
  
    def puede_modificar?(documento)
    # Los Directores pueden modificar cualquier documento si no esta borrado
      !documento.borrado
    end
end
  
class Administrador < Director
    def puede_borrar?(documento)
    # Los Administradores pueden borrar documentos si no estan borrados
      !documento.borrado
    end
end

# Crear usuarios con diferentes roles
lector = Lector.new("usuario_lector", "clave_lector", "lector@example.com")
redactor = Redactor.new("usuario_redactor", "clave_redactor", "redactor@example.com")
director = Director.new("usuario_director", "clave_director", "director@example.com")
admin = Administrador.new("usuario_admin", "clave_admin", "admin@example.com")

# Crear un documento
documento = Documento.new(redactor, true, "Contenido público")

# Verificar las capacidades de acceso y modificación según el rol
puts "Lector:"
puts "Puede ver el documento: #{lector.puede_ver?(documento)}"
puts "Puede modificar el documento: #{lector.puede_modificar?(documento)}"
puts "Puede borrar el documento: #{lector.puede_borrar?(documento)}"

puts "\nRedactor:"
puts "Puede ver el documento: #{redactor.puede_ver?(documento)}"
puts "Puede modificar el documento: #{redactor.puede_modificar?(documento)}"
puts "Puede borrar el documento: #{redactor.puede_borrar?(documento)}"

puts "\nDirector:"
puts "Puede ver el documento: #{director.puede_ver?(documento)}"
puts "Puede modificar el documento: #{director.puede_modificar?(documento)}"
puts "Puede borrar el documento: #{director.puede_borrar?(documento)}"

puts "\nAdministrador:"
puts "Puede ver el documento: #{admin.puede_ver?(documento)}"
puts "Puede modificar el documento: #{admin.puede_modificar?(documento)}"
puts "Puede borrar el documento: #{admin.puede_borrar?(documento)}"