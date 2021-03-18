class Superhero
    attr_accessor :name, :power, :bio
    @@all = []

    def initialize(params = {})
        @name = params["name"]
        @name = params["power"]
        @name = params["bio"]
        @@all << self
    end

    def self.all
        @@all
    end


end