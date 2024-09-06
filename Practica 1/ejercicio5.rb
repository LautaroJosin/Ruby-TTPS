def reemplazar(cadena)
    cadena.gsub('{' , "do\n").gsub('}' , "\nend");
end