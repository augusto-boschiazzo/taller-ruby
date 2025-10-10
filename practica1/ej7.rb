def contar(s, pattern)
  return s.downcase.scan(/#{pattern}/).size
end

puts(contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la"))
