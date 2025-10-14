def cuanto_falta?(time = Time.now)
    if time > Time.now
        return (time - Time.now).to_i / 60
    else
        return (Time.new(time.year, time.month, time.day, 23, 59, 59) - time).to_i / 60
    end
end

puts cuanto_falta? Time.new(2032, 12, 31, 23, 59, 59)
puts cuanto_falta?
