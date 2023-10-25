#Mejorar la función anterior en una nueva llamada listar_mejorada para que además reciba
#opcionalmente un parámetro llamado pegamento (su valor por defecto debe ser ": ") que sea
#el que utilice para unir los pares de clave/valor


def listar_mejorada(strings_hash, pegamento = ": ")
    html_string = "<ul>"
    strings_hash.each do |key, value|
      html_string += "<li>#{key}#{pegamento}#{value}</li>"
    end
    html_string += "</ul>"
  end
  
  # Ejemplo de uso:
  puts '<--   HTML format of the Hash   -->'
  puts listar_mejorada({ perros: 1, gatos: 1, peces: 0 })
  puts listar_mejorada({ frutas: 3, verduras: 2, carne: 1 }, " - ")