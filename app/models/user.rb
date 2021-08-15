class User < ApplicationRecord
    #validates :business_name, presence: true, uniqueness: {scope: [:phone_number, :email]}
    validates :email, uniqueness: true
    validates :business_name, presence: true
    validates :phone_number, presence: true
    validates :password, presence: true



    has_many :weddings
    has_many :venues, through: :weddings

    has_many :comments
    has_many :commented_weddings, through: :comments, source: :wedding

    has_secure_password #authenticate validates the password &/or password confirmation
end
