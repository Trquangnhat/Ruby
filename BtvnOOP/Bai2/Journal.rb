require './Document'
class Journal < Document
  attr_accessor :issueNumber_243, :monthIssue_243
  def initData(id_243, nxb_243, number_243, issueNumber_243, monthIssue_243)
    super(id_243, nxb_243, number_243)
    self.issueNumber_243 = issueNumber_243
    self.monthIssue_243 = monthIssue_243
  end

  def create()
    super()
    print "Issue Number"
    self.issueNumber = gets.chop()
    print "Month Number"
    self.monthIssue = gets.chop()
  end
  def display()
    print "Journal : "
    super.display()
    puts "\tIssue Number : #{self.issueNumber_243} -- Month Issue : #{self.monthIssue_243}"
  end
end