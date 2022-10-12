# Họ tên, Tuổi, Nghề nghiệp, số chứng minh nhân dân(duy nhất cho mỗi người)
class Person
    attr_accessor :name_243, :age_243, :job_243, :id_243
    def initialize(name_243, age_243, job_243, id_243)
      self.name_243 = name_243
      self.age_243 = age_243
      self.job_243 = job_243
      self.id_243 = id_243
    end
  
    def display()
      puts "#{self.id_243}: #{self.name_243}: #{self.age_243}: #{self.job_243}"
    end
  end