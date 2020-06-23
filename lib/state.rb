class State
    attr_accessor :name, :updated, :cases, :todayCases, :deaths, :todayDeaths, :active, :caseperonemillion, :deathsperonemillion, :tests
 

    @@all = []

    def initialize
      @name = name
      @updated = 0
      @cases = 0
      @todayCases = 0
      @deaths = 0
      @todayDeaths = 0
      @active = 0
      @caseperonemillion = 0
      @deathsperonemillion = 0
      @tests = 0

    end 
      
    end 

    def self.all
        @@all
    end 
end