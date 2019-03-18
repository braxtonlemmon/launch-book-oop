#!/home/braxton/.rbenv/shims/ruby

module Truck 
	def cargo_space
		puts "You have an 8x3 foot space for cargo."
	end
end

class Vehicle
	attr_accessor :color
	attr_reader :year

	@@count = 0

	def initialize(year, color, model)
		@year = year
		@color = color
		@model = model
		@speed = 0
		@@count += 1
	end

	def self.vehicle_count
		puts "You have created #{@@count} vehicles."
	end

	def display_info
		"You have a #{@year} #{@color} #{@model} going #{@speed} mph."
	end

	def speed_up(number)
		@speed += number
		puts "You sped up by #{number} mph."
	end

	def brake(number)
		@speed -= number
		puts "You slowed down by #{number} mph."
	end
	
	def shut_off
		@speed = 0
		puts "Your car is off."
	end

	def spray_paint(color)
		self.color = color
		puts "Your painted your #{@model} #{color}."
	end
	
	def self.gas(miles, gallons)
		puts "Your car has a fuel efficiency of #{miles.to_f / gallons} mpg."
	end

	def to_s
		"You have a #{@year} #{@color} #{@model} going #{@speed} mph."
	end

	def age 
		puts "Your vehicle is #{calculate_age} years old."
	end

	private

	def calculate_age
		Time.now.year - self.year
	end


end

class MyCar < Vehicle
	NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
	include Truck
	NUMBER_OF_DOORS = 2
end



#CODE
puts Vehicle.ancestors
puts
puts MyCar.ancestors
puts
puts MyTruck.ancestors
puts


truck = MyTruck.new(2002, 'Black', 'Tacoma')
puts truck
truck.age
truck.cargo_space
yota = MyCar.new(1994, "Green", "Pickup")
puts yota
yota.speed_up(50)
puts yota
yota.shut_off
yota.color = 'Red'
puts yota
yota.age
yota.spray_paint('Blue')
puts yota
MyCar.gas(100, 4)
yota.send :shut_off
yota.send :spray_paint, 'green'
p yota.instance_of? MyCar

truck.spray_paint('Aqua')