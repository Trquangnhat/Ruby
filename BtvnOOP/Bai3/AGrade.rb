require './Student'

class AGrade < Student
  # attr_accessor : math, physics, chemistry
  # def initialize(math, physics, chemistry)
  #   self.math = math
  #   self.physics = physics
  #   self.chemistry = chemistry
  # end

  attr_accessor :GradeA_243
  # GradeA =  "Math -- Physics -- Chemistry"
  def initialize(id_243, name_243, address_243, priority_243)
    super(id_243, name_243, address_243, priority_243)
    self.GradeA_243 =  "Math -- Physics -- Chemistry" 
  end
  def display()
    super()
    puts "A Class: #{self.GradeA_243}"
  end
end