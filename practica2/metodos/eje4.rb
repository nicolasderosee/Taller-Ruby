#Escribí un método que dado un número variable de parámetros que pueden ser de cualquier
#tipo, imprima en pantalla la cantidad de caracteres que tiene su representación como String
#y la representación que se utilizó para contarla
#Nota: Para convertir cada parámetro a string utilizá el método #to_s presente en todos los objetos.

def stringify (*objects)
	objects.each{|element| puts "#{element.to_s} => #{element.to_s.length}" }
end

stringify(9, Time.now, 'Hola', {un: 'hash'}, :ruby)