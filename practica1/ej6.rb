def tiempo_en_palabras(h)
  if h.hour == 1
    s = "Es la "
  else
    s = "Son las "
  end
  case h.min
  when 0..34 then
    s = s + h.hour.to_s
    case h.min
    when 0..10 then
      s = s + " en punto."
    when 11..20 then
      s = s + " y cuarto."
    when 21..34 then
      s = s + " y media."
    end

  when 35..55 then
    s = s + (h.hour + 1).to_s
    case h.min
    when 35..44
      s = s + " menos veinticinco."
    when 45..55
      s = s + " menos cuarto."
    end
  when 56..59 then
    s = "Casi son las " + (h.hour + 1).to_s
  end
  return s
end

puts tiempo_en_palabras(Time.new(2025, 10, 21, 1, 1))
puts tiempo_en_palabras(Time.new(2025, 10, 21, 1, 57))
