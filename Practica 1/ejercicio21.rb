def multiplos_de_3_y_5(tope)
    suma = 0
    (1..tope).each do |valor|
        suma += valor if es_multiplo?(valor,3) && es_multiplo?(valor,5)
    end
    suma
end

def es_multiplo?(numero, divisor)
    numero % divisor == 0
end

## El mínimo común múltiplo de estos dos números es 15. 
## Así que podemos usar step para iterar en saltos de 15 en lugar de revisar cada valor en el rango

def multiplos_de_3_y_5_v2(tope)
    suma = 0
    (15..tope).step(15) do |valor|
      suma += valor
    end
    suma
end

# Si ya hago el step de a 15, mejor sumo directamente los valores

def multiplos_de_3_y_5_v3(tope)
    (15..tope).step(15).sum()
end

# Uso del select para filtrar por una condicion/es

def multiplos_de_3_y_5_v4(tope)
    (1..tope).select(es_multiplo?(valor,3) && es_multiplo?(valor,5)).sum()
end


puts multiplos_de_3_y_5(100)