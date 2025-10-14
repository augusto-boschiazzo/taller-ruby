def ordenar(*numbers)
    return numbers.sort
end

entrada = [10, 9, 1, 2, 3, 5, 7, 8]
puts ordenar(*entrada) # El operador splat (*) descompone el arreglo en argumentos individuales cuando se usa para enviar parámetros.