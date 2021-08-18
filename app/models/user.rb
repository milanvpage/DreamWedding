class User < ApplicationRecord
    has_many :weddings
    has_many :venues, through: :weddings

    validates :email, presence: true, uniqueness: true
    validates :business_name, presence: true
    has_secure_password #authenticate, password=, validate methods all available


    def self.from_omniauth(auth)
        User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.email = auth['info']['email']
            u.business_name = auth['info']['name']
            u.password = SecureRandom.hex(14)
        end
    end

end
