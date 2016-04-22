class Weather < ActiveRecord::Base
	validates :travel_date, :destination, :carrier, :departure_time, :arrival_time, presence: true
end


