class Venue < ApplicationRecord
  validates :price, presence: true
  has_many :weddings
  has_many :users, through: :weddings


  def name_and_address
    "#{self.name} - #{self.address}"
  end

  def self.order_by_price
    self.order(price: :desc).limit(1)

  end

  #def self.most_expensive
   # self.where("price > 10000")
  #end

  def self.least_expensive
    self.where("price < 11000").limit(1)
  end

end