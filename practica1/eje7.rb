# Escribí una función llamada contar que reciba como parámetro dos String y que retorne
# la cantidad de veces que aparece el segundo String en el primero, en una búsqueda case‑
# insensitive (sin distinguir mayúsculas o minúsculas).

def contar(string, substring)
    string.downcase.scan(substring.downcase).count
end
  
# Ejemplos de uso:
texto = "Este es un ejemplo de un texto de ejemplo."
subtexto = "ejemplo"
  
resultado = contar(texto, subtexto)
puts "La palabra '#{subtexto}' aparece #{resultado} veces en el texto."
  
resultado = contar("Hola HOLA hola", "hola")
puts "La palabra 'hola' aparece #{resultado} veces en el texto."

resultado = contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")
puts "La palabra 'la' aparece #{resultado} veces en el texto."
  