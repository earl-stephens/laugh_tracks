class ComediansController < ApplicationController

  def index
    # binding.pry
    if comedian_params
      @comedians = Comedian.where(age: comedian_params.to_i)
      # specials = Special.all
      @avg_age = comedian_params.to_i
      @cities = Comedian.cities_by_age(comedian_params)
      @avg_run_length = Special.special_length_by_age(comedian_params)
      # @count_of_specials = @comedians.count_of_specials(comedian_params)
      # binding.pry
      @total_special_count = Special.total_special_count(comedian_params.to_i)
    else
      @comedians = Comedian.all
      # @specials = Special.all
      @avg_age = Comedian.avg_age
      @avg_run_length = Special.avg_run_length
      @cities = Comedian.unique_cities
      @total_special_count = Special.total_special_count
    end
  end

  def new
    @comedian = Comedian.new
  end

  private

  def comedian_params
    params[:age]
  end

end
