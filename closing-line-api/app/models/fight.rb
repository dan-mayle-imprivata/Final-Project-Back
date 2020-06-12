class Fight < ApplicationRecord
  has_many :users , through: :bets
  has_many :bets, dependent: :destroy
  belongs_to :event
end
