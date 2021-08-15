class Wedding < ApplicationRecord
  belongs_to :venue
  accepts_nested_attributes_for :venue #venue_attributes=

  has_many :comments
  has_many :users, through: :comments

  validates :title, presence: true, two_word: true, length: {minimum: 2}
  validates :flowers, :entertainment, :color_scheme, presence: true
  validates :color_scheme, presence: true, two_word: true
  validate :too_many_wedddings

  
  
  def venue_attributes=(hash_of_attributes)
    #byebug
    if !hash_of_attributes["name"].blank? && !hash_of_attributes["address"].blank? && !hash_of_attributes["price"].blank? 
        self.venue = Venue.find_or_create_by(hash_of_attributes)
    end

end



  def flowers_and_color_scheme
    "#{self.flowers} - #{self.color_scheme}"
  end

  def too_many_wedddings
    if Wedding.all.length >= 20
     errors.add :base, :invalid, message: "You have too many Weddings"
    end
  end

end
