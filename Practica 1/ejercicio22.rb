def multiplos(numeros = [] , tope)
    suma = 0
    mcm = numeros.reduce(:lcm)
    (mcm..tope).step(mcm) do |valor|
        suma += valor
    end
    suma
end


puts multiplos([3,5], 100)
puts multiplos([3,5,17,28,65], 100_000)