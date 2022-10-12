class Teacher

    attr_accessor :name_243, :age_243, :hometown_243, :id_243, :salary_243, :bonus_243, :penaty_243, :realSalary_243
    def initialize(id_243, name_243, age_243, hometown_243, salary,_243, penaty_243)
      self.name_243 = name_243
      self.age_243 = age_243.to_i
      self.hometown_243 = hometown_243
      self.id_243 = id_243
      self.salary_243 = salary_243.to_f
      self.bonus_243 = bonus_243.to_f
      self.penaty_243 = penaty_243.to_f
      # self.realSalary = realSalary
    end
  
    def display()
      puts "#{self.id_243} || #{self.name_243} || #{self.age_243} || #{self.hometown_243} || #{self.salary_243} || #{self.bonus_243} || #{self.penaty_243} || #{self.realSalary_243}"
    end
  end