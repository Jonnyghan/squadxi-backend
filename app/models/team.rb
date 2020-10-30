class Team < ApplicationRecord
    has_many :players
    validates :name, :league, presence: true
end
