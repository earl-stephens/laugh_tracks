class Special < ApplicationRecord

  belongs_to :comedian
  validates_presence_of :title, :length

  def self.avg_run_length
    average(:length)
  end

end
