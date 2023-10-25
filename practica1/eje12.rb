#Escribí una función longitud que dado un arreglo que contenga varios String cualesquiera,
#retorne un nuevo arreglo donde cada elemento es la longitud del String que se encuentra en
#la misma posición del arreglo recibido como parámetro.

def longitud(arreglo)
    arreglo.map { |string| string.length }
end
  
# Ejemplo de uso:
strings = ["Hola", "Mundo", "Ruby", "GPT-3"]
longitudes = longitud(strings)
puts longitudes.inspect # Esto mostrará [4, 5, 4, 5]