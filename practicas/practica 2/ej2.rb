def ordenar(*numbers) # El operador splat (*) permite recibir un número variable de argumentos, convirtiéndolos en un arreglo.
    return numbers.sort
end

puts ordenar(1, 4, 6, 2, 3, 5, 0, 10, 9)