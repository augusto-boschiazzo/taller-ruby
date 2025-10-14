def listar_mejorado(hash, pegamento = ": ")
    str = ""
    hash.each_with_index do |(key, value), index|
        str += "#{index + 1}. #{key}#{pegamento}#{value} \n"
    end
    return str
end

puts listar_mejorado({ perros: 2, gatos: 2, peces: 0, aves: 0 }, " -> ")
