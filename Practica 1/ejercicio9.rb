def string_reverso(cadena)
    cadena.reverse
end


def string_sin_espacio(cadena)
    cadena.delete(' ')
end


def string_a_arreglo_ascii(cadena)
    cadena.chars.map { |char| char.ord }
end


def string_reemplaza_vocal(cadena)
    cadena.tr('aeiouAEIOU', '4310643106')
end

