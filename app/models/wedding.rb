class Wedding < ApplicationRecord
  belongs_to :venue
  has_many :comments
  has_many :users, through: :comments

  def name_and_color_scheme
    "#{self.name} - #{self.color_scheme}"
  end


end
