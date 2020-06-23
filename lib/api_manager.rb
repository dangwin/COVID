class COVID::APIManager



    BASE_URL = "https://corona.lmao.ninja/v2/states"


    def self.get_states
      
    url = BASE_URL
    response = Net::HTTP.get(URI(url))
    covid_info = JSON.parse(response)

      name =  covid_info.map {|x| x.values[0]}
      updated = covid_info.map {|x| x.values[1]}
       cases = covid_info.map {|x| x.values[2]}
      todayCases = covid_info.map {|x| x.values[3]}
      deaths = covid_info.map {|x| x.values[4]}
      todayDeaths = covid_info.map {|x| x.values[5]}
      active = covid_info.map {|x| x.values[6]}
      caseperonemillion = covid_info.map {|x| x.values[7]}
      deathsperonemillion = covid_info.map {|x| x.values[8]}
      tests = covid_info.map {|x| x.values[9]}


     binding.pry
     
  
    end 
  end 