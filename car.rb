require 'time'

class Car

	attr_accessor :speed, :maker, :price, :acceleration

	@@total_price = 0
	@@total_count = 0
	
	def initialize(maker, price, acceleration)
		@maker = maker
		@price = price
		@acceleration = acceleration
		@@total_price += price
    @@total_count += 1
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

	def driving_result
		distance = 100000
		time = distance / (self.accel - self.brake).to_i
		formal_time = (Time.parse("1/1") + time).strftime("%M分%S秒")
		"#{formal_time} #{@maker}"
	end
	
end