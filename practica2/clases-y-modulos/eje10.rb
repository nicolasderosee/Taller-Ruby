=begin
Implementá el Mixin Countable que te permita hacer que cualquier clase cuente la cantidad de
veces que los métodos de instancia definidos en ella es invocado. Utilizalo en distintas clases,
tanto desarrolladas por vos como clases de la librería standard de Ruby, y chequeá los resulta‑
dos. El Mixin debe tener los siguientes métodos:
1. count_invocations_of(sym): método de clase que al invocarse realiza las tareas ne‑
cesarias para contabilizar las invocaciones al método de instancia cuyo nombre es sym (un
símbolo).
2. invoked?(sym): método de instancia que devuelve un valor booleano indicando si el
método llamado sym fue invocado al menos una vez en la instancia receptora.
3. invoked(sym): método de instancia que devuelve la cantidad de veces que el método
identificado por sym fue invocado en la instancia receptora.
Nota: para simplificar el ejercicio, asumí que los métodos a contabilizar no 
reciben parámetros.
Tip: investigá Module#alias_method y Module#included.
=end

module Countable

    def self.included(mod)
       mod.extend(ClassMethods) ## Agrego métodos de clase
    end

    def invoked? (sym)
      methods_count[sym] > 0
    end

    def methods_count
       @methods_count ||= Hash.new(0)
    end

    def invoked (sym)
     methods_count[sym]
    end

    module ClassMethods

        def count_invocations_of (sym)
          alias_method :"orig_#{sym}", sym
          define_method sym do
            methods_count[sym] +=1
            send :"orig_#{sym}"
          end
        end

    end
end

class Greeter
# Incluyo el Mixin
    include Countable

    def hi
        puts 'Hey!'
    end
    def bye
        puts 'See you!'
    end
    # Indico que quiero llevar la cuenta de veces que se invoca el método #hi
    count_invocations_of :hi
end

a = Greeter.new
b = Greeter.new
p a.invoked?(:hi)
# => false
p b.invoked?(:hi)
# => false
a.hi
# Imprime "Hey!"
p a.invoked(:hi)
# => 1
p b.invoked(:hi)
# => 0