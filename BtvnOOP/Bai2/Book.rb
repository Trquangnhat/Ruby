require './Document'
class Book < Document
  attr_accessor :author_243, :pageNumber_243

  # def initialize()
  # end
  def initData(id_243, nxb_243, number_243, author_243, pageNumber_243)
    super(id_243, nxb_243, number_243)
    self.author_243 = author_243
    self.pageNumber_243 = pageNumber_243
  end
  
  def create()
    super()
    print "Author: "
    self.author = gets.chop()
    print "page Number: "
    self.pageNumber = gets.chop()
  end
  
  def display()
    print "Book : "
    super.display()
    puts "\tAuthor : #{self.author_243} -- pageNumber : #{self.pageNumber_243}"
  end
end