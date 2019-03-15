class Special < ApplicationRecord

  belongs_to :comedian
  validates_presence_of :title, :length

  def self.avg_run_length
    average(:length).round
    # binding.pry
  end

  def self.special_length_by_age(comedian_params)
    comics = Comedian.where(age: comedian_params.to_i)
    # binding.pry
    where(comedian_id: comics).average(:length).round
  end

  def self.special_count(comedian)
    where(comedian_id: comedian).count
  end

  def count_of_specials(comedian)
    # binding.pry
    comedian.first.specials.count
  end

  def self.total_special_count(age="all")
    # binding.pry
    if age == "all"
      self.count
    else
      comics = Comedian.where(age: age)
      self.where(comedian_id: comics).count
    end

  end


end
