class Document
    attr_accessor :id_243, :nxb_243, :number_243
    
    def initData(id_243, nxb_243, number_243)
      self.id_243 = id_243
      self.nxb_243 = nxb_243
      self.number_243 = number_243
    end
  
    def create()
      print "id: "
      self.id = gets.chop()
      print "nxb: "
      self.nxb = gets.chop()
      print "number: "
      self.number = gets.chop()
    end
    
    def display()
      puts "Id : #{self.id_243} -- nxb: #{self.nxb_243} -- number: #{self.number_243}"
    end
  end