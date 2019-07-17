require 'time'

class Car

	attr_accessor :speed, :maker, :price, :acceleration

	def initialize(maker, price, acceleration)
		@maker = maker
		@price = price
		@acceleration = acceleration
	end

	def accel
		@speed = @acceleration * rand(110..120)
  end

  def brake
		@speed = @acceleration * rand(1..50)
	end

	def speed_decrease
		@speed *= (1 - @crew * 0.05)
	end

	def driving_time
		distance = 100000
		time = distance / (self.accel - self.brake).to_i
		formal_time = (Time.parse("1/1") + time).strftime("%M分%S秒")
		"#{formal_time} #{@maker}"
	end
	
end