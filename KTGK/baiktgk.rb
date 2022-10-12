puts "Họ tên: Trương Quang Nhật"
puts "Mã sinh viên: 1911505310243"

class PTGT
    attr_accessor :id243, :hangSX243, :namSX243, :dongXe243, :giaBan243, :bienSo243, :mauXe243
    def initialize(id243, hangSX243, namSX243, dongXe243, giaBan243, bienSo243, mauXe243)
        @id243 = id243
        @hangSX243 = hangSX243
        @namSX243 = namSX243
        @dongXe243 = dongXe243
        @giaBan243 = giaBan243
        @bienSo243 = bienSo243
        @mauXe243 = mauXe243
    end
    def show
        puts "id: #{@id243}"
        puts "Hang SX: #{@hangSX243}"
        puts "Nam SX: #{@namSX243}"
        puts "Dong Xe: #{@dongXe243}"
        puts "Gia Ban: #{@giaBan243}"
        puts "Bien So: #{@bienSo243}"
        puts "Mau Xe: #{@mauXe243}"
    end
end

class Oto < PTGT
    attr_accessor :soChoNgoi243, :kieuDongCo243, :nhienLieu243, :soTuiKhi243, :ngayDangKiem243
    def initialize(id243, hangSX243, namSX243, dongXe243, giaBan243, bienSo243, mauXe243, soChoNgoi243, kieuDongCo243, nhienLieu243, soTuiKhi243, ngayDangKiem243)
        super(id243, hangSX243, namSX243, dongXe243, giaBan243, bienSo243, mauXe243)
        @soChoNgoi243 = soChoNgoi243
        @kieuDongCo243 = kieuDongCo243
        @nhienLieu243 = nhienLieu243
        @soTuiKhi243 = soTuiKhi243
        @ngayDangKiem243 = ngayDangKiem243
    end
    def show
        super
        puts "So Cho Ngoi: #{@soChoNgoi243}"
        puts "Kieu Dong Co: #{@kieuDongCo243}"
        puts "Nhien Lieu: #{@nhienLieu243}"
        puts "So Tui Khi: #{@soTuiKhi243}"
        puts "Ngay Dang Kiem: #{@ngayDangKiem243}"
    end
end

class XeMay < PTGT
    attr_accessor :congSuat243, :dungTichBinhXang243
    def initialize(id243, hangSX243, namSX243, dongXe243, giaBan243, bienSo243, mauXe243, congSuat243, dungTichBinhXang243)
        super(id243, hangSX243, namSX243, dongXe243, giaBan243, bienSo243, mauXe243)
        @congSuat243 = congSuat243
        @dungTichBinhXang243 = dungTichBinhXang243
    end
    def show
        super
        puts "Cong Suat: #{@congSuat243}"
        puts "Dung Tich Binh Xang: #{@dungTichBinhXang243}"
    end
end

class XeTai < PTGT
    attr_accessor :trongTai243
    def initialize(id243, hangSX243, namSX243, dongXe243, giaBan243, bienSo243, mauXe243, trongTai243)
        super(id243, hangSX243, namSX243, dongXe243, giaBan243, bienSo243, mauXe243)
        @trongTai243 = trongTai243
    end
    def show 
        super
        puts "Trong Tai: #{@trongTai243}"
    end
end

class QLPTGT
    attr_accessor :dsptgt243

    def initialize()
        @dsptgt243 = []
    end
    
    def themPTGT(ptgt243)
        @dsptgt243 << ptgt243
    end

    def timKiemByHangSX(keyword243)
        rs243 = @dsptgt243.select{|ptgt243| ptgt243 if ptgt243.hangSX243.upcase.include? keyword243.upcase}
        return rs243
    end

    def timKiemByMau(keyword243)
        rs243 = @dsptgt243.select{|ptgt243| ptgt243 if ptgt243.mauXe243.upcase.include? keyword243.upcase}
        return rs243
    end

    def timKiemByBienSo(keyword243)
        rs243 = @dsptgt243.select{|ptgt243| ptgt243 if ptgt243.bienSo243.upcase.include? keyword243.upcase}
        return rs243
    end

    def delete(id243)
        @dsptgt243.each do |pt|
            if pt.id243 == id243
                @dsptgt243.delete(pt)
                return true
            end
        end
        return false
    end

    def show_list
        @dsptgt243.each {|ptgt243| ptgt243.show}
    end
end

qlptgt243 = QLPTGT.new

while true
    puts "1. Them moi phuong tien giao thong."
    puts "2. Tim kiem theo hang san xuat."
    puts "3. Tim kiem theo mau xe."
    puts "4. Tim kiem theo bien so."
    puts "5. Hien thi danh sach phuong tien."
    puts "6. Xoa phuong tien giao thong."
    puts "7. Thoat."
    print "Choose your option: "
    option243 = gets.to_i
    case option243
    when 1
        puts "Nhap thong tin phuong tien:"
        print "Nhap id: "
        id243 = gets.to_i
        print "Nhap hang san xuat: "
        hangSX243 = gets
        print "Nhap nam san xuat: "
        namSX243 = gets.to_i
        print "Nhap dong xe: "
        dongXe243 = gets
        print "Nhap gia ban: "
        giaBan243 = gets
        print "Nhap mau xe: "
        mauXe243 = gets
        print "Nhap bien so: "
        bienSo243 = gets
        option_pt243 = 0
        while option_pt243<1 || option_pt243>4
            puts "1. O to."
            puts "2. Xe may."
            puts "3. Xe tai."
            print "Chon loai phuong tien: "
            option_pt243 = gets.to_i
            case option_pt243
            when 1
                print "Nhap so cho ngoi: "
                soChoNgoi243 = gets.to_i
                print "Nhap kieu dong co: "
                kieuDongCo243 = gets
                option_nhienLieu243 = 0
                while option_nhienLieu243 <1 || option_nhienLieu243 >2
                    puts "1. Xang."
                    puts "2. Dau."
                    print "Chon nhien lieu: "
                    option_nhienLieu243 = gets.to_i
                    case option_nhienLieu243
                    when 1
                        nhienLieu243 = "Xang"
                    when 2
                        nhienLieu243 = "Dau"
                    end    
                end
                print "Nhap so tui khi: "
                soTuiKhi243 = gets.to_i
                print "Nhap ngay dang kiem: "
                ngayDangKiem243 = gets
                qlptgt243.themPTGT(Oto.new(id243, hangSX243, namSX243, dongXe243, giaBan243, bienSo243, mauXe243, soChoNgoi243, kieuDongCo243, nhienLieu243, soTuiKhi243, ngayDangKiem243))
            when 2
                print "Nhap dung tich binh xang: "
                dungTichBinhXang243 = gets
                print "Nhap cong suat: "
                congSuat243 = gets
                qlptgt243.themPTGT(XeMay.new(id243, hangSX243, namSX243, dongXe243, giaBan243, bienSo243, mauXe243, congSuat243, dungTichBinhXang243))
            when 3
                print "Nhap trong tai: "
                trongTai243 = gets
                qlptgt243.themPTGT(XeTai.new(id243, hangSX243, namSX243, dongXe243, giaBan243, bienSo243, mauXe243, trongTai243))
            end
        end              
        when 2
            print "Nhap hang san xuat can tim: "
            keyword243 = gets
            rs243 = qlptgt243.timKiemByHangSX(keyword243)
            rs243.each {|pt243| pt243.show}
        when 3
            print "Nhap mau can tim: "
            keyword243 = gets
            rs243 = qlptgt243.timKiemByMau(keyword243)
            rs243.each {|pt243| pt243.show}
        when 4
            print "Nhap bien so can tim: "
            keyword243 = gets
            rs243 = qlptgt243.timKiemByBienSo(keyword243)
            rs243.each {|pt243| pt243.show}
        when 5
            puts "Danh sach phuong tien giao thong: "
            qlptgt243.show_list
        when 6
            print "Nhan id phuong tien can xoa: "
            delete243 = gets.to_i
            isDeleted243 = qlptgt243.delete(delete243)
            if (isDeleted243 == true)
                puts "Da xoa"
            else
                puts "Co loi. Xoa khong thanh cong"
            end
            # qlptgt243.show_list
        when 7
            break
    end
end