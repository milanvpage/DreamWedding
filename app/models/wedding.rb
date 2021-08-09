class Wedding < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_many :comments
  has_many :users, through: :comments
end
