class COVID::APIManager

    BASE_URL = "https://corona.lmao.ninja/v2/states"


    def self.get_states
      
      url = BASE_URL
      response = Net::HTTP.get(URI(url))
      covid_info = JSON.parse(response) 


      covid_info.each do |hash|
        name = hash["state"]
        updated = hash["updated"]
        cases = hash["cases"]
        todayCases = hash["todayCases"]
        deaths = hash["deaths"]
        todayDeaths = hash["todayDeaths"]
        active = hash["active"]
        caseperonemillion = hash["casesPerOneMillion"]
        deathsperonemillion = hash["deathsPerOneMillion"]
        tests = hash["tests"]

      COVID::State.new(name, updated, cases, todayCases, deaths, todayDeaths, active, caseperonemillion, deathsperonemillion, tests)

      end 

     # binding.pry
    end 
  end 