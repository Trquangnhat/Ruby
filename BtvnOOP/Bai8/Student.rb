class Student 
    attr_accessor :name_243, :age_243, :classs_243
    def initialize(name_243, age_243, classs_243)
      self.name_243 = name_243
      self.age_243 = age_243
      self.classs_243 = classs_243
    end
  
    def display()
      puts "#{self.name_243} || #{self.age_243} || #{self.classs_243}"
    end
  end