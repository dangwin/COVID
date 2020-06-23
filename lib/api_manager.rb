class COVID::APIManager

    BASE_URL = "https://corona.lmao.ninja/v2/states"


    def self.get_states

    url = BASE_URL
    response = Net::HTTP.get(URI(url))
    covid_info = JSON.parse(response)
     state_name =  covid_info.map {|x| x.values[0]}
  
    end 
  end 