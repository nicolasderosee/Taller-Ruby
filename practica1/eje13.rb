#Escribí una función llamada listar que reciba un Hash y retorne un String con los pares de
#clave/valor formateados en una lista ordenada en texto plano.

def a_ul(strings_hash)
    html_string = "<ul>"
    strings_hash.each do |key, value|
      html_string += "<li>#{key}: #{value}</li>"
    end
    html_string += "</ul>"
  end
  
  # Ejemplo de uso:
  puts '<--   HTML format of the Hash   -->'
  puts a_ul({ perros: 1, gatos: 1, peces: 0 })