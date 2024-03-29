class Venue < ApplicationRecord
  has_many :weddings
  has_many :users, through: :weddings
  belongs_to :state 
  accepts_nested_attributes_for :state
  accepts_nested_attributes_for :weddings, reject_if: proc { |attributes| attributes['title'].blank? || attributes['entertainment'].blank? || attributes['color_scheme'].blank? || attributes['flowers'].blank? }

  validates :name, presence: true, length: {minimum: 2, message: "has to be longer than 2!"}
  validates :address, presence: true, uniqueness: {scope: [:name, :price]}
  validates :price, numericality: {greater_than: 0, less_than: 1000000001}, presence: true

  def state_attributes=(hash_of_attributes)

    if !hash_of_attributes["name"].blank?
      @state = State.new(hash_of_attributes)
      
      if !State.find_by_name(@state.name)
        @state.save
      end
    end
  end


  scope :order_by_price, -> {order(:price)}


  def name_and_address
    "#{self.name} - #{self.address}"
  end

  #def self.order_by_price
   # self.order(price: :desc)

  #end

  def self.most_expensive
    self.where("price > 11000").limit(1)
  end

  def self.least_expensive
    self.where("price < 11000").limit(1)
  end

end