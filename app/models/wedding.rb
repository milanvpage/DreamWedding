class Wedding < ApplicationRecord
  belongs_to :venue
  belongs_to :user
  accepts_nested_attributes_for :venue #venue_attributes=

  validates :title, presence: true, length: {minimum: 2}
  validates :flowers, :entertainment, :color_scheme, presence: true
  validates :color_scheme, presence: true, two_word: true

  
  def venue_attributes=(hash_of_attributes)
    #byebug
    if !hash_of_attributes["name"].blank? && !hash_of_attributes["address"].blank? && !hash_of_attributes["price"].blank? 
        self.venue = Venue.find_or_create_by(hash_of_attributes)
    end

end



  def flowers_and_color_scheme
    "#{self.flowers} - #{self.color_scheme}"
  end


end
