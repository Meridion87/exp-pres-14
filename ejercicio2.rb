nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
b = []

#1
b = nombres.select {|i| i.length > 5}

print b
puts

#2
b = nombres.map do |i|
  i.downcase
end

print b
puts

#3
b = nombres.select {|i| i[0, 1] == "P"}

print b
puts

#4
b = nombres.map do |i|
  i.length
end

print b
puts

#5
b = nombres.map do |i|
  i.gsub(/[aeiou]/, '') 
end

print b
puts
