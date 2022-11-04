class PhanSo
    attr_accessor :tu, :mau
    def initialize(tu, mau)
        @tu = tu
        @mau = mau
    end

    def + (object)
        tu = self.tu * object.mau + object.tu * self.mau
        mau = self.mau * object.mau
        return "#{tu}/#{mau}"

    end

    def - (object)
        tu = self.tu * object.mau - object.tu * self.mau
        mau = self.mau * object.mau
        return "#{tu}/#{mau}"
    end

    def * (object)
        tu = self.tu * object.tu
        mau = self.mau * object.mau
        return "#{tu}/#{mau}"
    end

    def / (object)
        tu = self.tu * object.mau
        mau = self.mau * object.tu
        return "#{tu}/#{mau}"
    end

    
end

def Cong(ps1, ps2)
    tu = ps1.tu * ps2.mau + ps2.tu * ps1.mau
    mau = ps1.mau * ps2.mau
    ps = PhanSo.new(tu, mau)
    return ps
end

def Tru(ps1, ps2)
    tu = ps1.tu * ps2.mau - ps2.tu * ps1.mau
    mau = ps1.mau * ps2.mau
    ps = PhanSo.new(tu, mau)
    return ps
end

def Nhan(ps1, ps2)
    tu = ps1.tu * ps2.tu 
    mau = ps1.mau * ps2.mau
    ps = PhanSo.new(tu, mau)
    return ps
end

def Chia(ps1, ps2)
    tu = ps1.tu * ps2.mau 
    mau = ps1.mau * ps2.tu
    ps = PhanSo.new(tu, mau)
    return ps
end

puts "Nhap phan so 1: "
print "Nhap tu so: "
tu1 = gets.to_i
mau1 = 0
loop do
    print "Nhap mau so: "
    mau1 = gets.to_i
    if mau1 != 0
        break
    end
end
ps1 = PhanSo.new(tu1, mau1)

puts "Nhap phan so 2: "
print "Nhap tu so: "
tu2 = gets.to_i
mau2 = 0
loop do
    print "Nhap mau so: "
    mau2 = gets.to_i
    if mau2 != 0
        break
    end
end
ps2 = PhanSo.new(tu2, mau2)

tong = Cong(ps1, ps2)
hieu = Tru(ps1, ps2)
tich = Nhan(ps1, ps2)
thuong = Chia(ps1, ps2)

puts "Bai 1:" 
puts "Tong 2 phan so: #{tong.tu}/#{tong.mau}"
puts "Hieu 2 phan so: #{hieu.tu}/#{hieu.mau}"
puts "Tich 2 phan so: #{tich.tu}/#{tich.mau}"
puts "Thuong 2 phan so: #{thuong.tu}/#{thuong.mau}"

puts "Bai 2:"
puts "Tong 2 phan so: #{(ps1+ps2).inspect}"
puts "Hieu 2 phan so: #{(ps1-ps2).inspect}"
puts "Tich 2 phan so: #{(ps1*ps2).inspect}"
puts "Thuong 2 phan so: #{(ps1/ps2).inspect}"