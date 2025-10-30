def procesar_hash(hash, proc)
    new_hash = { }
    hash.each do |key, value|
        new_hash[key] = proc[value]
    end
    new_hash
end

hash = { '1' => 'clave', :otra_clave => 'valor' }
puts procesar_hash(hash, ->(x) { x.to_s.upcase })