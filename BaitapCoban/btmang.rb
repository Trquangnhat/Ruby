a = []
print"nhập số phần tử của mảng"
n = gets.to_i
for i in (0..n-1) do
    puts"nhập phần tử thứ a[#{i}]"
    a[i] = gets.to_i
end 
puts "mảng: #{a}"
puts"số lớn nhất là: #{a.max}"
puts"số bé nhất là: #{a.min}"
puts"giá trị trung bình là: #{a.sum/n}"