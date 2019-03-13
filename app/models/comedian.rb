class Comedian < ApplicationRecord

  has_many :specials
  validates_presence_of :name, :age, :city

  def self.avg_age
    average(:age)
  end

  def self.unique_cities
    order(:city).distinct.pluck(:city)
  end

end
