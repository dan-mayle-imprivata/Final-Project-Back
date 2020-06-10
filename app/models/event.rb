class Event < ApplicationRecord
    has_many :fights, dependent: :destroy
end
