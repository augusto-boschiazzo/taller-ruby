def pentavocalica(str)
    vocales = ["a", "e", "i", "o", "u"]
    return vocales.all? { |vocal| str.downcase.include?(vocal) }
end

puts pentavocalica("Murcielago")
puts pentavocalica("Hola")
puts pentavocalica("Educacion")
puts pentavocalica("aaaaa")