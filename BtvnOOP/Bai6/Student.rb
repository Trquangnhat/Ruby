class Student 
    attr_accessor :name_243, :age_243, :hometown_243, :classs_243
  
    def initialize(name_243, age_243, hometown_243, classs_243)
      self.name_243 = name_243
      self.age_243 = age_243
      self.hometown_243 = hometown_243
      self.classs_243 = classs_243
    end
  
    # hiển thị thông tin của mỗi học sinh.
    def display()
      puts " Ten: #{self.name_243} || Tuoi:  #{self.age_243} || Noi o:  #{self.hometown_243} || Lop: #{self.classs_243}"
    end
  end