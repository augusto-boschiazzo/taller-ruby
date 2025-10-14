def notacion_hexadecimal(params)
                                     #to_s transforma el entero a string, si se le pasa un parámetro se usa de base para convertir el número. En este caso, 16, o sea, hexadecimal
    return params.map { |color| color.to_s(16).rjust(2, '0') }.join 
                                             # rjust justifica a la derecha con la cantidad de espacios del primer parámetro, rellenando con el segundo
end

def notacion_decimal(params)
    # destructuring
    red, green, blue = params
    return (red + green * 256 + blue * 256 * 256)
end

puts notacion_hexadecimal([0, 128, 255])
puts notacion_decimal([0, 128, 255])