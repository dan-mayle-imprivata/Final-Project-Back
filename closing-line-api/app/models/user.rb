class User < ApplicationRecord
    has_secure_password
    has_many :bets, dependent: :destroy
    has_many :fights, through: :bets
    has_many :events, through: :fights


    validates :name, presence: true, length: {minimum: 3, maximum: 50},
    uniqueness: { case_sensitive: false }
    validates :email, presence: true, length: {minimum: 5}
    validates :password, presence: true, length: {minimum: 5}, allow_nil: true
end

# Add dependent: :destroy to any has_many that doesn't have a through.
#has_many :bets, dependent: :destroy 

#bets = saved:show
#fights = reviews
