print "nhập số thứ nhất: "
a=gets.to_i
print "nhập số thứ hai: "
b=gets.to_i
print "nhập số thứ ba: "
c=gets.to_i

d = [a, b, c].sort
puts "Tăng dần: ", d
puts "Giảm dần: ", d.reverse