class ComediansController < ApplicationController

  def welcome
  end

  def index
    # binding.pry
    if params[:age] != nil
      # binding.pry
      @comedians = Comedian.where(age: params[:age].to_i)
      # specials = Special.all
      @avg_age = params[:age].to_i
      @cities = Comedian.cities_by_age(params[:age])
      @avg_run_length = Special.special_length_by_age(params[:age])
      # @count_of_specials = @comedians.count_of_specials(params[:age])
      # binding.pry
      @total_special_count = Special.total_special_count(params[:age].to_i)
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

  def create
    # binding.pry
    @comedian = Comedian.new(comedian_params)
    if @comedian.save
      redirect_to comedians_path
    else
      render :new
    end
  end

  private

  def comedian_params
    params.require(:comedian).permit(:age, :name, :city)
  end

end
