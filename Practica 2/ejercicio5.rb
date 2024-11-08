def cuanto_falta?(fecha = nil)
    fecha ||= Time.new(Time.now.year, Time.now.month, Time.now.day)

    # La fecha ingresada puede ser anterior a la ingresada, igual o posterior a la ACTUAL
    
    if fecha > Time.now # Si es posterior...
        puts "Faltan #{(fecha - Time.now).to_i / 60} minutos para la fecha ingresada"
    end
        
end