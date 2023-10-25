=begin
Escribí una función que exprese en palabras la hora que recibe como parámetro, según las 
siguientes reglas:
• Si el minuto está entre 0 y 10, debe decir “en punto”,
• si el minuto está entre 11 y 20, debe decir “y cuarto”,
• si el minuto está entre 21 y 34, debe decir “y media”,
• si el minuto está entre 35 y 44, debe decir “menos veinticinco” con la hora siguiente,
• si el minuto está entre 45 y 55, debe decir “menos cuarto” con la hora siguiente,
• y si el minuto está entre 56 y 59, debe decir “Casi son las” con la hora siguiente.

Es importante considerar que cuando la hora es 1, la forma correcta de expresarla no es
“Son las 1 en punto”, sino “Es la 1 en punto”. Esto debe tenerse en cuenta en cada uno de
los casos expresados en el enunciado de este ejercicio.

Resolver utilizando rangos numéricos. 
=end
def expresar_hora(hora, minuto)
    hora_str = if hora == 1
                 "Es la 1"
               else
                 "Son las #{hora}"
               end
            
    case minuto
    when 0..10
      "#{hora_str} en punto"
    when 11..20
      "#{hora_str} y cuarto"
    when 21..34
      "#{hora_str} y media"
    when 35..44
      "#{hora_str} menos veinticinco"
    when 45..55
      "#{hora_str} menos cuarto"
    when 56..59
      "Casi son las #{hora + 1}"
    else
      "Hora o minuto inválido"
    end
  end
  
  # Ejemplos de uso:
  puts expresar_hora(1, 0) #Es la 1 en punto
  puts expresar_hora(3, 15) #Son las 3 y cuarto
  puts expresar_hora(7, 30)
  puts expresar_hora(12, 40)
  puts expresar_hora(10, 57) #casi son las 11