a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
b = []
impar = []
par = []

#1
b = a.map do |i|
  i += 1
end

print b
puts

#2
b = a.map do |i|
  i.to_f
end

print b
puts

#3
b = a.map do |i|
  i.to_s
end

print b
puts

#4
b = a.reject {|i| i < 5}

print b
puts

#5
b = a.select {|i| i <= 5}

print b
puts

#6
b = a.inject(0) {|sum, i| sum + i}

print b
puts

#7
b = a.group_by {|ele| ele.odd?}

print b
puts

#8
b = a.group_by {|ele| ele > 6}

print b
puts
