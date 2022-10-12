require './Document'
class Newspaper < Document
  attr_accessor :dayIssue_243
  
  
  def initData(id_243, nxb_243, number_243, dayIssue_243)
    super(id_243, nxb_243, number_243)
    self.dayIssue_243 = dayIssue_243
  end
  
  def create()
    super()
    print "Day Issue : "
    self.dayIssue = gets.chop()
  end

  def display()
    print "Newspaper : "
    super.display()
    puts "\tDay Issue : #{self.dayIssue_243}"
  end
end