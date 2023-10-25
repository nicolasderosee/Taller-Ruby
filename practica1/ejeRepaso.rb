=begin
Implementá un método que reciba un argumento y retorne un valor booleano indicando si la 
cadena recibida como argunmento es prentavocálica o panavocálica (contiene todas las vocales).
El chequeo no debe ser sensible a mayusculas y minusculas. 
=end
def es_pentavocalica?(cadena)
    cadena = cadena.downcase
    vocales = %w[a e i o u]
    vocales.all? { |vocal| cadena.include?(vocal) }
  end
  
  test_cases = [
    'aeiou',
    'AEIOU',
    'AeIoU',
    'Taller de Tecnologías de Producción de Software - Opción Ruby',
    'murcielago',
    'a',
    'e',
    'i',
    'o',
    'u',
    'aeio',
    'ua',
    'uoiea',
    'Nops :(',
  ]
  
  test_cases.each do |test_case|
    puts "#{test_case} => #{es_pentavocalica?(test_case)}"
  end