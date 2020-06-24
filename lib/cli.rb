class COVID::CLI

    def run
        introduction
        get_data
        main_loop
    end

    def introduction
        puts "Welcome to the COVID-19 Statistics Portal"
    end 

    def get_data
        COVID::State.new()
    end

    binding.pry




end