def notacion_hexadecimal( array = [] )
    res = array.map { |color| color.to_s(16).upcase}
    res.join
end


def notacion_entera( array = [])
    array[0] + array[1] * 256 + array[2] * 256 * 256
end


puts notacion_hexadecimal([0,128,255])
puts notacion_entera([0,128,255])