a = 0
b = :a
puts "Las variables son símbolos que representan un objeto, en este caso el método local_variables me da los símbolos de las variables locales, y b es el símbolo de la variable a, por eso tienen el mismo object_id."
puts local_variables[0].object_id
puts b.object_id

s1 = String::new("Hola")
s2 = "Hola"
puts "Los strings se pueden inicializar con string literals, que son el conjunto de caracteres dentro de los \". Se puede escapar comillas usando el símbolo de diagonal invertida dentro del string. Tambien se puede usar el método new."
puts s1.class
puts s2.class

a1 = [1, 2]
a2 = Array.new(2)
puts "Los arrays se pueden inicializar como literales, usando []. También se pueden inicializar usando new. Se puede definir el tamaño del array como parámetro del new, también se puede definir de qué tipo será el contenido del array."
puts a1.size
puts a2.size

h1 = {hola: 1, chau: "QUEEEE"}
h2 = Hash.new
puts "Los hashes se pueden crear con hash literals, que se escriben entre {}, y con el método new. Algunos objetos se pueden convertir en hashes. Se puede acceder a sus campos usando el símbolo dentro de corchetes. Por ejemplo, h1[:hola]."
puts h1
puts h1[:hola]
puts h2
