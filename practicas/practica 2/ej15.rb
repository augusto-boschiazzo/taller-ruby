def da_nil?
    puts yield.nil? # Ejecuta el bloque de código recibido e imprime si el resultado es nil o no
end

da_nil? { }

da_nil? do
'Algo distinto de nil'
end