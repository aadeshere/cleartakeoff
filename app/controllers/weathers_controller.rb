class WeathersController < ApplicationController

def index
	@weathers = Weather.order("created_at DESC").limit(1)
end

def create
	@weather = Weather.create(weather_params)
	redirect_to root_path
end


private

  def weather_params
    params.require(:weather).permit(:travel_date, :origin, :destination, :carrier, :departure_time, :arrival_time)
  end

end
