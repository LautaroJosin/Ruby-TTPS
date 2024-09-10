def contar(cadena, subcadena)
    puts cadena.scan(/\b#{Regexp.quote(subcadena)}\b/i).count
end

contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la") # => 4
contar("La casa de LA esquina tiene la puerta roja y la ventana blanca.", "la") # => 4
contar("La casala dlae esquina tiene la puerta roja y la ventalana blanlaca.", "la") # => 3
contar("LALA lala", "la") # => 0