class User < ApplicationRecord
    has_many :weddings
    #has_many :venues, through: :weddings

    has_many :comments
    has_many :commented_weddings, through: :comments

    validates :email, presence: true
    validates :business_name, presence: true
    validates :password_digest, presence: true
    has_secure_password





end
