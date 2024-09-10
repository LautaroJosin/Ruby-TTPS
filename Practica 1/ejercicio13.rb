def listar(hash)
    string = ""
    hash.each_with_index do |(clave,valor),indice|
		string += "#{indice+1}. #{clave}: #{valor}\n"
    end
    return string
end

puts listar({ perros: 2, gatos: 2, peces: 0, aves: 0 })