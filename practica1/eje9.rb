#Dada una cadena cualquiera, y utilizando los métodos que provee la clase String, realizá las
#siguientes operaciones sobre dicha cadena, implementando métodos que funcionen de 
#la siguiente forma:
#• string_reverso: retorna el string con los caracteres en orden inverso.
#• string_sin_espacio: elimina los espacios en blanco que contenga.
#• string_a_arreglo_ascii: retorna un arreglo con cada uno de los caracteres 
#convertidos a su correspondiente valor ASCII.
#• string_remplaza_vocal: cambia las vocales por números:
# – "a" o "A" por "4",
# – "e" o "E" por "3",
# – "i" o "I" por "1",
# – "o" u "O" por "0",
# – y "u" o "U" por "6".

  # Retorna el string con los caracteres en orden inverso.
  def string_reverso(cadena)
    cadena.reverse
  end
  
  # Elimina los espacios en blanco que contenga.
  def string_sin_espacio(cadena)
    cadena.delete(" ")
  end
  
  # Retorna un arreglo con cada uno de los caracteres convertidos a su correspondiente valor ASCII.
  def string_a_arreglo_ascii(cadena)
    cadena.chars.map { |char| char.ord }
  end
  
  # Cambia las vocales por números según las reglas especificadas.
  def string_remplaza_vocal(cadena)
    cadena.downcase.gsub('a','4').gsub('e','3').gsub('i','1').gsub('o','0').gsub('u','6')
  end
  
  # Ejemplos de uso:

  cadena = "Hola Mundo"
  puts string_reverso(cadena) # "odnuM aloH"
  
  cadena = "Hola Mundo"
  puts string_sin_espacio(cadena) # "HolaMundo"
  
  cadena = "Hello"
  puts string_a_arreglo_ascii(cadena).inspect # [72, 101, 108, 108, 111]
  
  cadena = "AEIOU"
  puts string_remplaza_vocal(cadena) # "43106"

  ["TTPS RUBY", "ttps ruby", "Ttps ruby", "ttps rUBY"]