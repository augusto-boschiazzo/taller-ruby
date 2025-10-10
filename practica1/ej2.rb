puts "Los objetos se pueden transformar en String usando el método to_s que heredan de Object. Tipo de la variable 'a' antes de convertir:"
a = 1
puts a.class

puts "Luego de convertir: "
a = a.to_s

puts a.class

puts "Ademas, se puede usar el método String::try_convert que intenta transformar un objeto en string. Por ejemplo: "

class Papu
  
end

puts String::try_convert(Papu.to_s)
