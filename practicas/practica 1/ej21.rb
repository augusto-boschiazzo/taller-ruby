def multiplos_de(numeros, tope)
    return (0...tope).select { |num| numeros.all? { |n| num % n == 0 } }.sum # Tengo que hacer muchisimas más iteraciones que en la solución del ejercicio anterior: paso por todos los números hasta el tope, y por cada uno de ellos recorro a su vez todos los múltiplos.
end

comienzo = (Time.now.to_f * 1000).to_i
puts multiplos_de([3, 5], 100)
puts multiplos_de([3, 5, 17, 28, 65], 100_000)
fin = (Time.now.to_f * 1000).to_i
puts "Tiempo transcurrido: #{fin - comienzo} ms" # La solución no es óptima.