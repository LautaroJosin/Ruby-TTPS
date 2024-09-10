def listar_mejorada(hash, pegamento = ": ")
    string = ""
    hash.each_with_index do |(clave,valor),indice|
		string += "#{indice+1}. #{clave} #{pegamento} #{valor}\n"
    end
    return string
end

puts listar_mejorada({ perros: 2, gatos: 2, peces: 0, aves: 0 }, "==> ")