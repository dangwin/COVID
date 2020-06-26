class COVID::State
    attr_accessor :name, :updated, :cases,  :deaths, :active, :caseperonemillion, :deathsperonemillion, :tests
 
    @@all = []

    def initialize(name, updated, cases, deaths, active, caseperonemillion, deathsperonemillion, tests)
      @name = name
      @updated = updated
      @cases = cases
      @deaths = deaths
      @active = active
      @caseperonemillion = caseperonemillion
      @deathsperonemillion = deathsperonemillion
      @tests = tests
      @@all << self 

    end 
  
    def self.all
        @@all
    end 
    

end