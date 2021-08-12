class Wedding < ApplicationRecord
  belongs_to :venue
  has_many :comments
  has_many :users, through: :comments

  def title_and_color_scheme
    "#{self.title} - #{self.color_scheme}"
  end

  def entertainment_and_flowers
    "#{self.entertainment} - #{self.flowers}"
  end


end
