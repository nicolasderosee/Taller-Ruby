#Escribí una función que encuentre la suma de todos los números naturales múltiplos de 3 y 5
#(ambos) que sean menores que un número tope que reciba como parámetro. Por ejemplo:
#multiplos_de_3_y_5(100) => 315

def multiplos_de_3_y_5(tope)
    (1..tope).select { |i| i % 5 == 0 && i % 3 == 0 }.sum
end
  
puts multiplos_de_3_y_5(100)