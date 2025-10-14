def longitud(*args)
    args.each do |arg|
        puts "#{arg} --> #{arg.to_s().length}"
    end
end

longitud(9, Time.now, 'Hola', {un: 'hash'}, :ruby)