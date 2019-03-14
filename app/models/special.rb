class Special < ApplicationRecord

  belongs_to :comedian
  validates_presence_of :title, :length

  def self.avg_run_length
    average(:length).round
    # binding.pry
  end

  def self.special_length_by_age(comedian_params)
    comics = Comedian.where(age: comedian_params.to_i)
    where(comedian_id: comics).average(:length).round
  end

end
