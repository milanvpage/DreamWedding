class Venue < ApplicationRecord
  has_many :weddings
  has_many :users, through: :weddings
end