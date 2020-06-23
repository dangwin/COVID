class State
    attr_accessor :state, :cases, :todayCases, :deaths, :todayDeaths, :tests

    @@all = []

    def initialize
        @state = state
        @cases = 0
        @todayCases = 0
        @deaths = 0
        @todayDeaths= 0
        @tests = 0
        @@all << self 

    end 

    def self.all
        @@all
    end 
end