=begin
Modificá la implementación del ejercicio anterior para que GenericFactory sea un módulo
que se incluya como Mixin en las subclases que implementaste. ¿Qué modificaciones tuviste
que hacer en tus clases?
=end

module GenericFactory
    def self.included(mod) #metodo de clase para extender la clase que incluye al modulo con metodos adicionales
      mod.extend(ClassMethods)
    end
    def initialize(**args)
        raise NotImplementedError #metodo de instancia
    end
    module ClassMethods #contiene metodos de clase
      def create(**args)
          new(**args)
      end
    end
end

class Sub
    attr_accessor :bar, :foo
    include GenericFactory
    def initialize(**args)
      self.bar = args[:bar]
      self.foo = args[:foo]
    end
end

s = Sub.create(bar: 10, foo: 20)
p s.bar

=begin
El metodo included se llama cuando el módulo se incluye en una clase, y extiende 
la clase con métodos del módulo ClassMethods.
Dentro del módulo ClassMethods, se define el método de clase create, 
que utiliza new(**args) para crear una nueva instancia de la clase que lo incluye, 
pasando los argumentos contenidos en args.
La razón principal para utilizar un módulo ClassMethods es organizar 
los métodos de clase de manera más limpia y clara, especialmente cuando un módulo 
define tanto métodos de instancia como de clase.
=end