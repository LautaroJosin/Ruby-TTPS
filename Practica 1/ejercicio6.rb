def tiempo_en_palabras(horario)
    final = ""
    minuto = horario.min
    case minuto
        
    when 0..10
        puts "Son las #{horario.hour} en punto"
    when 11..20
        puts "Son las #{horario.hour} y cuarto"
    when 21..34
        puts "Son las #{horario.hour} y media"
    when 35..44
        puts "Son las #{horario.hour} menos veinticinco"
    when 45..55
        puts "Son las #{horario.hour} menos cuarto"
    when 56..59
        puts "Casi son las #{horario.hour}"
    end
end

# Año, mes, dia, hora, minuto

tiempo_en_palabras(Time.new(2024, 10, 21, 10, 1))
# => "Son las 10 en punto"
tiempo_en_palabras(Time.new(2024, 10, 21, 9, 33))
# => "Son las 9 y media"
tiempo_en_palabras(Time.new(2024, 10, 21, 8, 45))
# => "Son las 9 menos cuarto"
tiempo_en_palabras(Time.new(2024, 10, 21, 6, 58))
# => "Casi son las 7"
tiempo_en_palabras(Time.new(2024, 10, 21, 0, 58))
# => "Casi es las 1"