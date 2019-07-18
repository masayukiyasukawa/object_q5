class Dealer < Car

	def self.total_count
		@@total_count
	end

	def self.total_price
		@@total_price
	end
	
	def self.average_price
		@@total_price / @@total_count
	end

end