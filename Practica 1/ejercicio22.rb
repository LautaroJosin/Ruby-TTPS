# Ojo con los argumentos
# PRIMERO LOS OBLIGATORIOS, SEGUNDOS LOS OPCIONALES Y FINALMENTE LAS KEYWORDS

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