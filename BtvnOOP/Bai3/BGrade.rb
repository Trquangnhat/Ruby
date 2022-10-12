require './Student'
class BGrade < Student
  attr_accessor :GradeB_243
  def initialize(id_243, name_243, address_243, priority_243)
    super(id_243, name_243, address_243, priority_243)
    self.GradeB_243 = "Math -- Chemistry -- Biological"
  end
  def display()
    super()
    puts "B Class: #{self.GradeB_243}"
  end
end