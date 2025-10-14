def string_reverso(string)
    return string.reverse # Invierte el string
end

def string_sin_espacio(string)
    return string.gsub(/\s+/,"") # Reemplaza los caracteres que cumplen la expresion regular por el segundo parametro
end

def string_a_arreglo_ascii(string)
    return string.bytes # Da los bytes (valores ASCII) de cada caracter del string en un arreglo
end

def string_reemplaza_vocales(string)
    return string.tr('aeiouAEIOU', '4310643106') # Reemplaza los caracteres del primer parametro por los del segundo parametro
end

s = "Hola Mundo"
puts(s)
puts string_reverso(s)
puts string_sin_espacio(s)
puts string_a_arreglo_ascii(s)
puts string_reemplaza_vocales(s)