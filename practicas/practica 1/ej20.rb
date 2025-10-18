def multiplos_de_3_y_5(tope)
    suma = 0
    veces = (tope / 15)
    1.upto(veces) do |index|
        suma += (index * 15)
    end
    return suma
end

comienzo = (Time.now.to_f * 1000).to_i
puts multiplos_de_3_y_5(100)
fin = (Time.now.to_f * 1000).to_i
puts "Tiempo transcurrido: #{fin - comienzo} ms" # La solución es óptima.
