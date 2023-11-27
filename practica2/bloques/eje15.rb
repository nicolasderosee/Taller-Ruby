#Escribí un método da_nil? que reciba un bloque, lo invoque y retorne si el valor de retorno del
#bloque fue nil. 

def da_nil?
    result = yield
    result.nil?
  end
  
  # Ejemplos de uso:
  resultado1 = da_nil? { }
  puts resultado1 # => true
  
  resultado2 = da_nil? do
    'Algo distinto de nil'
  end
  puts resultado2 # => false