[:upcase, :downcase, :capitalize, :swapcase].map do |meth|
    "TTPS Ruby".send(meth)
end

# => ["TTPS RUBY", "ttps ruby", "Ttps ruby", "ttps rUBY"]
# Llama a cada uno de los métodos del arreglo sobre el string "TTPS Ruby"
# El método send llama dinámicamente al método del objeto enviado como parámetro.