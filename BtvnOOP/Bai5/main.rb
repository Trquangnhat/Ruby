class Room
    attr_accessor :price_243, :category_243
  
    def initialize(price_243, category_243)
      self.price_243 = price_243
      self.category_243 = category_243
    end
  
    def display()
      puts "Category: #{self.category_243} -- Price: #{self.price_243}"
    end    
  end
  
  class RoomA < Room 
    def initialize()
      super(500, "A")
    end
    def display()
      super
    end
  end
  
  class RoomB < Room 
    def initialize()
      super(300, "B")
    end
  end
  
  class RoomC < Room 
    def initialize()
      super(100, "C")
    end
    def display()
      super
    end
  end