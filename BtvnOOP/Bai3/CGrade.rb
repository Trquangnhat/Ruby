require './Student'

class CGrade < Student
  attr_accessor :GradeC_243
  def initialize(id_243, name_243, address_243, priority_243)
    super(id_243, name_243, address_243, priority_243)
    self.GradeC_243 = "Literary  -- History -- Geography"
  end

  def display()
    super()
    puts "C Class: #{self.GradeC_243}"
  end
end