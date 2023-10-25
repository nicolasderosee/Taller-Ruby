=begin
Escribí una función llamada reemplazar que, dado un String que recibe como parámetro,
busque y reemplace en éste cualquier ocurrencia de "{" por "do\n" y cualquier ocurrencia de
"}" por "\nend", de modo que convierta los bloques escritos con llaves por bloques multilínea con do y end.
=end

def reemplazar(string)
  string.gsub!("{", "do\n").gsub!("}", "\nend")
end
  
puts 'Ingrese el código:'
input_string = gets.chomp
resultado = reemplazar(input_string)
puts resultado