def reemplazar(s)
  new_s = s.gsub(/{/, "do\n")
  new_s = new_s.gsub(/}/, "\nend")
  return new_s
end

puts reemplazar("3.times { |i| puts i } \n 5.times { |f| puts f }")
