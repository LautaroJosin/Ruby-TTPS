def contar(cadena1, cadena2)
    puts cadena1.downcase.scan(cadena2.downcase).count
end

contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")