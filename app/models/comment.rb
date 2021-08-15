class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :wedding
    accepts_nested_attributes_for :wedding

    validates :title, presence: true
    validates :content, presence: true

end
