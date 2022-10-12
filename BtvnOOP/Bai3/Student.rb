class Student
    attr_accessor :id_243, :name_243, :address_243, :priority_243
    
    def initialize(id_243, name_243, address_243, priority_243)
      self.id_243 = id_243
      self.name_243 = name_243
      self.address_243 = address_243
      self.priority_243 = priority_243
    end
  
    def display()
      puts "id: #{self.id_243} -- name: #{self.name_243} -- address: #{self.address_243} -- priority -- #{self.priority_243}"
    end
  end