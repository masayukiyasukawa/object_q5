require './car'
require './dealer'
require './honda'
require './nissan'
require './ferrari'
require './toyota'

cars = []
cars << Honda.new("Honda", rand(151..200), 2)
cars << Nissan.new("Nissan", rand(100..150), 2.5)
cars << Ferrari.new("Ferrari", rand(300..400), 3)
cars << toyota = Toyota.new("Toyota", rand(201..250), nil)

toyota.acceleration_in_price

results = []
cars.each do |car|
	results << car.driving_result
end

rank = results.sort!

i = 1
rank.each do |r|
	puts "#{i}位:#{r}"
	i += 1
end