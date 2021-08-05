class User < ApplicationRecord
    has_many :weddings
    has_many :categories, through: :weddings

    has_many :comments
    has_many :commented_weddings, through: :comments, source: :wedding

    has_secure_password #authenticate validates the password &/or password confirmation
end
