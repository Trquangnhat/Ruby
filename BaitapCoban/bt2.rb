def check(a,b,c)
    if (a+b>c) and (a+c>b) and (b+c>a)
        return true
    end
        return false
end 

def stamgiac (a,b,c)
    p = (a+b+c)/2
    s= Math.sqrt(p*(p-a)*(p-b)*(p-c))
    return s,p
end

print "nhập cạnh thứ nhất: "
a=gets.to_f
print "nhập cạnh thứ hai: "
b=gets.to_f
print "nhập cạnh thứ ba: "
c=gets.to_f

if check(a,b,c) == true
    puts"là 3 cạnh của tam giác"
    s,p = stamgiac(a,b,c)
    puts"diện tích tam giác là: #{s}"
    puts"chu vi tam giác là: #{p*2}"
else
    puts"không phải 3 cạnh của tam giác"
end
