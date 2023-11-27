#Dada la siguiente clase abstracta GenericFactory, implementá subclases de la misma que
#permitan la creación de instancias de dichas clases mediante el uso del método de clase .
#create, de manera tal que luego puedas usar esa lógica para instanciar objetos sin invocar
#directamente el constructor new.

class GenericFactory
    def self.create(**args)
        new(**args) 
    end
    def initialize(**args)
        #no se puede crear una instancia directa, debe heredarse e implementarse en las subclases
        raise NotImplementedError 
    end
end

=begin
el new (**args) se utiliza para crear una nueva instancia de la clase que lo esta invocando, 
y se le pasan los argumentos contenidos en el hash args. 
La doble asterisco (**) se utiliza para desempaquetar los argumentos del hash 
y pasarlos como argumentos individuales al constructor new de la clase.
=end

class Sub < GenericFactory
    attr_accessor :bar, :foo
    def initialize(**args)
      self.bar = args[:bar]
      self.foo = args[:foo]
    end
end

s = Sub.create(bar: 10, foo: 20)
p s.bar

=begin
En resumen, el código define una clase abstracta GenericFactory que proporciona un 
método de clase create para crear instancias de subclases. 
Luego, se define una subclase Sub que hereda de GenericFactory y se utiliza el método 
create para crear una instancia de Sub con valores específicos para bar y foo. 
El resultado es que se imprime el valor de bar, que es 10 en este caso.
=end