class ComediansController < ApplicationController

def index
  @comedians = Comedian.all
  @specials = Special.all
  @avg_age = Comedian.avg_age
  @avg_run_length = Special.avg_run_length
  @cities = Comedian.unique_cities
end

end
