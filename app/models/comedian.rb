class Comedian < ApplicationRecord

  has_many :specials
  validates_presence_of :name, :age, :city

  def self.avg_age
    average(:age)
  end

  def self.unique_cities
    order(:city).distinct.pluck(:city)
  end

  def self.cities_by_age(comedian_params)
    order(:city).where(age: comedian_params.to_i).pluck(:city)
  end

end
