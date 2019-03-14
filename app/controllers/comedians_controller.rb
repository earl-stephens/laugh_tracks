class ComediansController < ApplicationController

  def index
    # binding.pry
    if comedian_params
      @comedians = Comedian.where(age: comedian_params.to_i)
      @specials = Special.all
      @avg_age = comedian_params.to_i
      @cities = Comedian.cities_by_age(comedian_params)
      @avg_run_length = Special.special_length_by_age(comedian_params)
    else
      @comedians = Comedian.all
      @specials = Special.all
      @avg_age = Comedian.avg_age
      @avg_run_length = Special.avg_run_length
      @cities = Comedian.unique_cities
    end
  end

  private

  def comedian_params
    if params[:age]
      params.require(:age)
    end
  end

end
