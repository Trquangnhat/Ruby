# Với mỗi cá nhân cần quản lý các thông tin sau: Họ tên, tuổi, số chứng minh nhân dân
require './Room'
require 'date'

class Person
  attr_accessor :name_243, :age_243, :id_243, :room_243, :checkin_date_243, :checkout_date_243, :numberRent_243, :rent_243
  def initData(id_243, name_243, age_243, room_243, checkin_date_243, checkout_date_243)
    self.name_243 = name_243
    self.age_243 = age_243
    self.id_243 = id_243
    self.room_243 = room_243
    # self.numberRent = numberRent
    self.checkin_date_243 = Date.parse(checkin_date_243)
    self.checkout_date_243 = Date.parse(checkout_date_243)
  end

  def create()
    print "id: "
    self.id = gets.chop()
    print "name: "
    self.name = gets.chop()
    print "age: "
    self.age = gets.chop()
    puts "Choose room: "
    puts "1. Room A || 2. Room B || 3. Room C"
    print "Enter your choose: "
    choose = gets.chop()
    case choose
    when "1"
      self.room = RoomA.new()
    when "2"
      self.room = RoomB.new()
    when "3"
      self.room = RoomC.new()
    end
    print "check-in date(yyyy/mm/dd): "
    self.checkin_date_243 = Date.parse(gets.chop())
    print "check-out date(yyyy/mm/dd): "
    self.checkout_date_243 = Date.parse(gets.chop())

  end

  def display()
    puts "id: #{self.id_243} || name: #{self.name_243} || age: #{self.age_243}"
    puts "\troom: #{self.room.category}(#{self.room_243.price}$) "
    puts "\tcheck-in data: #{self.checkin_date_243} || check-out date: #{self.checkout_date_243}"
    if self.rent_243 != nil 
      puts "\tRent : #{self.rent_243}"
    else 
      puts "\tRent : Incomplete!"
    end
  end
end