class Team
    attr_accessor :name, :motto
    @@all = []
    
    def initialize
        @@all << self
    end

    def self.all
        @@all
    end
end