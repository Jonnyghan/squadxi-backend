class Player < ApplicationRecord
    belongs_to :team
    validates :name, :age, :position, presence: true
end
