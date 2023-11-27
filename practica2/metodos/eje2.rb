#Modificá el método anterior para que en lugar de recibir un arreglo como único parámetro, 
#reciba todos los números como parámetros separados.

def ordenar_arreglo (*arreglo)
	arreglo.sort
end

puts ordenar_arreglo(1,2,4,6,1,2,8,2).to_s 