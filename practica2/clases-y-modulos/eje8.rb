=begin
¿Qué diferencia hay entre el uso de include y extend a la hora de incorporar un módulo en
una clase?

La diferencia principal entre include y extend radica en cómo incorporan un módulo 
en una clase y en qué tipo de métodos se añaden. Con el extend puedo usar los méotodos del módulo
como métodos de clase. Con el include puedo usar métodos del módiclos como métodos de instancia

1. Si quisieras usar un módulo para agregar métodos de instancia a una clase, ¿qué forma
usarías a la hora de incorporar el módulo a la clase?

Cuando utilizas include, estás incorporando los métodos del módulo como métodos de instancia 
en la clase receptora. Esto significa que los métodos se vuelven accesibles 
a las instancias de la clase, pero no a la propia clase.


2. Si en cambio quisieras usar un módulo para agregar métodos de clase, ¿qué forma usarías
en ese caso?

Cuando utilizas extend, estás incorporando los métodos del módulo como métodos 
de clase en la clase receptora. Esto significa que los métodos se vuelven accesibles 
a la clase misma y no a sus instancias.

=end

module Hablar
    def saludar
      puts "¡Hola, soy un #{self.class} y sé hablar!"
    end
  
    def self.decir_algo
      puts "Este es un mensaje del módulo Hablar."
    end
end

#Cuando usamos include, los métodos del módulo se vuelven métodos de instancia de la clase. 
#Cualquier instancia de la clase puede llamar a estos métodos.
class Persona
    include Hablar
end
  
persona = Persona.new
persona.saludar
# Salida: ¡Hola, soy un Persona y sé hablar!


#Cuando usamos extend, los métodos del módulo se vuelven métodos de clase de la clase. 
#Solo la clase en sí (no las instancias) puede llamar a estos métodos.
class Persona2
    extend Hablar
end
  
Persona2.decir_algo
# Salida: Este es un mensaje del módulo Hablar.