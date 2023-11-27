#Implementá un método que reciba como parámetro un arreglo de números, 
#los ordene y devuelva el resultado.

def ordenar_arreglo (arreglo)
	arreglo.sort #ordena el arreglo de forma ascendente 
end

puts ordenar_arreglo([1,2,4,6,1,2,8,2]).to_s 