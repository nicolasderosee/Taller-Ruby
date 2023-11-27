=begin
Extendé las clases TrueClass y FalseClass para que ambas respondan al método de 
instancia opposite, el cual en cada caso debe retornar el valor opuesto al que recibe la invocación
al método.
=end

class TrueClass #extiendo para agregar metodos a la clase
    def opposite
        !self #retorna el valor opuesto
    end
end

class FalseClass
    def opposite
        !self
    end
end

puts false.opposite # Llamando a opposite en una instancia de FalseClass, imprime "true"
puts true.opposite # Llamando a opposite en una instancia de TrueClass, imprime "false"
puts true.opposite.opposite # Llamando a opposite dos veces en una instancia de TrueClass, imprime "true"
