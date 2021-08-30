class State < ApplicationRecord
    has_many :venues
    validates :name, presence: true
end
