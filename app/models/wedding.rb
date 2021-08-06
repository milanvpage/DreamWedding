class Wedding < ApplicationRecord
  def title_and_destination
  end


  belongs_to :user
  belongs_to :venue
  has_many :comments
  has_many :users, through: :comments
end
