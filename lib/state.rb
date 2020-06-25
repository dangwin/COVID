class COVID::State
    attr_accessor :name, :updated, :cases, :todayCases, :deaths, :todayDeaths, :active, :caseperonemillion, :deathsperonemillion, :tests
 
    @@all = []

    def initialize(name, updated, cases, todayCases, deaths, todayDeaths, active, caseperonemillion, deathsperonemillion, tests)
      @name = name
      @updated = updated
      @cases = cases
      @todayCases = todayCases
      @deaths = deaths
      @todayDeaths = todayDeaths
      @active = active
      @caseperonemillion = caseperonemillion
      @deathsperonemillion = deathsperonemillion
      @tests = tests
      @@all << self 

    end 
    
    def self.all
        @@all
    end 

    def self.find_by_index(index)
      @@all[index]
    end
end