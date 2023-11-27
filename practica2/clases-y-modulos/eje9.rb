#Implementá el módulo Reverso para utilizar como Mixin e incluilo en alguna clase para 
#probarlo. Reverso debe contener los siguientes métodos:

#di_tcejbo: Imprime el object_id del receptor en espejo (en orden inverso).
#ssalc: Imprime el nombre de la clase del receptor en espejo.

module Reverso
    def di_tcejbo
      puts "Object ID en espejo: #{self.object_id.to_s.reverse}"
    end
  
    def ssalc
      puts "Nombre de la clase en espejo: #{self.class.to_s.reverse}"
    end
end

class Ejemplo
    include Reverso
end
  
objeto = Ejemplo.new
objeto.di_tcejbo
objeto.ssalc