class Wedding < ApplicationRecord
  def title_and_content
  end


  belongs_to :user
  belongs_to :category
  has_many :comments
  has_many :users, through: :comments
end
