class COVID::APIManager

    BASE_URL = "https://corona.lmao.ninja/v2/states"

    def self.get_states

    url = BASE_URL
    response = HTTParty.get(url)
    response
    
    end 
end