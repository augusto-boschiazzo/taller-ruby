def saludar()
    if ARGV.length == 0
        puts "Por favor, ingrese su nombre como argumento al ejecutar el programa."
        return
    end
    puts "Hola, #{ARGV[0]}" # ARGV permite acceder a los parámetros de ejecución
end

saludar()