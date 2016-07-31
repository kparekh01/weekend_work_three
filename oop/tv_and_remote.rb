# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class.

# The Tv class will have the attributes: power, volume, and channel.

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods:
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class TV
  attr_accessor :power, :volume, :channel

  def initialize
    @power = "ON"
    @volume = 0
    @channel = 0
  end
end

class Remote

  def initialize(tv)
    @tv = tv
  end

  def toggle_power
    if @tv.power == "ON"
      @tv.power = "OFF"
    elsif @tv.power == "OFF"
      @tv.power = "ON"
    end
  end

  def increment_volume
    @tv.volume += 1
  end

  def decrement_volume
    @tv.volume -= 1
  end

  def set_channel(channel_number)
    @tv.channel = channel_number
  end
end


samsung_tv = TV.new
samsung_remote = Remote.new(samsung_tv)

puts "Currently your Samsung TV is: #{samsung_tv.power}"
puts
samsung_remote.toggle_power
if samsung_tv.power == "OFF"
puts "Now your Samsung TV is: #{samsung_tv.power}"
puts
puts "PASS!"
else
puts "F"
end

puts
puts "Currently the volume on your Samsung TV is: #{samsung_tv.volume}"
puts

5.times do
samsung_remote.increment_volume
end

if samsung_tv.volume == 5
puts "Now your Samsung TV volume is: #{samsung_tv.volume}"
puts
puts "PASS!"
else
puts "F"
end

puts
puts "Currently the volume on your Samsung TV is: #{samsung_tv.volume}"
puts

3.times do
samsung_remote.decrement_volume
end

if samsung_tv.volume == 2
puts "Now your Samsung TV volume is: #{samsung_tv.volume}"
puts
puts "PASS!"
else
puts "F"
end

puts
puts "Currently the channel on your Samsung TV is set to: #{samsung_tv.channel}"
puts
samsung_remote.set_channel(128)
if samsung_tv.channel == 128
puts "Now the channel on your Samsung TV is set to: #{samsung_tv.channel}"
puts
puts "PASS!"
else
puts "F"
end
