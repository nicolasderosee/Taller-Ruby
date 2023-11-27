=begin
Analizá el siguiente script e indicá:
¿Qué imprimen cada una de las siguientes sentencias? 
¿De dónde está obteniendo el valor?
=end

VALUE = 'global'

module A
    VALUE = 'A'
    class B
        VALUE = 'B'
        def self.value
            VALUE
        end
        def value
            'iB'
        end
    end
   def self.value
       VALUE
    end
end

class C
    class D
        VALUE = 'D'
        def self.value
            VALUE
        end
    end
    module E
        def self.value
            VALUE
        end
    end
    def self.value
        VALUE
    end
end

class F < C
    VALUE = 'F'
end

puts A.value #=> 'A' ya que self.value retorna la constante VALUE definida adentro de module A, ruby busca la definición mas cercana a la constante, si no estuviera VALUE = 'A' en el módulo se retornaría 'global'
puts A::B.value #=> El operador :: se toma como un path a una constante. A/B.value retornará 'B' ya que en la clase B se define como constante VALUE= 'B'
puts C::D.value #=> Retornará 'D'
puts C::E.value #=> Retornará 'global'
puts F.value #=> Retornará 'global' ya que C no redefine VALUE aunque F lo haga, en C se va a buscar value al valor más cercano

puts A::value #=> 'A'
# puts A.new.value #=> Error A es un módulo, no una clase.
# puts B.value # => Retorna Error, ya que piensa que B es una constante, al encontrarse adentro de un módulo para acceder a este valor deberíamos usar A::B.value
puts C::D.value #=> Retornará 'D' ya que al utilizar el operador :: Ruby entiende que es un Path
puts C.value #=>'global' Esto no retorna un error ya que C no se encuentra dentro de un módulo, entonces C es una clase para Ruby
puts F.superclass.value #=> Retorna lo mismo que el caso anterior, ya que la superclase de F es C = F < C y value de C retorna 'global'