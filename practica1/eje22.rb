#Creá otra función, similar a la anterior, que busque los números naturales 
#múltiplos de N números enteros que recibirá como parámetro en un arreglo

def multiplos_de(factores, tope)
  (1..tope).select do |i|
    factores.all? { |factor| i % factor == 0 }
  end.sum
end

puts multiplos_de([3, 5], 100)