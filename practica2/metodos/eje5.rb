#Implementá el método cuanto_falta? que opcionalmente reciba como parámetro un objeto
#Time y que calcule la cantidad de minutos que faltan para ese momento. 
#Si el parámetro de fecha no es provisto, asumí que la consulta es para la medianoche de hoy.

#toma por defecto el time actual si no recibe parametro
def cuanto_falta(time = Time.new(Time.now.year, Time.now.month, Time.now.day, 23, 59, 59))
    ((time - Time.now) / 60).to_i.abs #abs para que no sea negativo
end

puts "Faltan #{cuanto_falta(Time.new(2032, 12, 31, 23, 59, 59))} minutos"

puts "Faltan #{cuanto_falta()} minutos"