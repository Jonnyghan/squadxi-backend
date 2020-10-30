class Team < ApplicationRecord
    has_many :players
    validates :name, :league, presence: true

    def team_size
        self.players.length
    end

    def center_backs
        self.players.find_by_sql("SELECT * FROM players WHERE position = 'Cb'")
    end
    
    def full_backs
        self.players.find_by_sql("SELECT * FROM players WHERE position = 'Fb'")
    end
    
    def center_mids
        self.players.find_by_sql("SELECT * FROM players WHERE position = 'Cm'")
    end

    def wide_mids
        self.players.find_by_sql("SELECT * FROM players WHERE position = 'Wm'")
    end
    
    def strikers
        self.players.find_by_sql("SELECT * FROM players WHERE position = 'St'")
    end
    
    def goalies
        self.players.find_by_sql("SELECT * FROM players WHERE position = 'Gk'")
    end
end
