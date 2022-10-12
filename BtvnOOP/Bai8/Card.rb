require './Student'
class Card
  attr_accessor :id_243, :student_243, :borrowDate_243, :paymentDate_243, :bookId_243
  def initialize(id_243, student_243, borrowDate_243, paymentDate_243, bookId_243)
    self.id_243 = id_243
    self.student_243 = student_243
    self.borrowDate_243 = borrowDate_243
    self.paymentDate_243 = paymentDate_243
    self.bookId_243 = bookId_243
  end

  def display()
    puts "id card = #{self.id_243} student name = #{self.student_243.name}"
  end
end