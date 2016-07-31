# In this exercise, we've already implemented the class, and you have to write the
# driver code.
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

new_reservation = HotelReservation.new(customer_name: "Kenneth Parekh", date: "11/28/2017", room_number: 1202)
puts "Your current room number is : #{new_reservation.room_number}"
puts
new_reservation.room_number = 2808
if new_reservation.room_number == 2808
  puts "Your new room number is : #{new_reservation.room_number}"
  puts
  puts "PASS!"
else
  puts "F"
end

puts
puts "Currently your amenities are : #{new_reservation.amenities}"
puts
new_reservation.add_a_fridge
if new_reservation.amenities == ["fridge"]
  puts "Now your amenities are : #{new_reservation.amenities}"
  puts
  puts "PASS!"
else
  puts "F"
end

puts
puts "Currently your amenities are : #{new_reservation.amenities}"
puts
new_reservation.add_a_crib
if new_reservation.amenities == ["fridge", "crib"]
  puts "Now your amenities are : #{new_reservation.amenities}"
  puts
  puts "PASS!"
else
  puts "F"
end

puts
puts "Currently your amenities are : #{new_reservation.amenities}"
puts
new_reservation.add_a_custom_amenity("Wireless Internet")
if new_reservation.amenities == ["fridge", "crib", "Wireless Internet"]
  puts "Now your amenities are : #{new_reservation.amenities}"
  puts
  puts "PASS!"
else
  puts "F"
end
