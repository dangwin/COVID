class COVID::CLI

    def run
        COVID::APIManager.get_states
        welcome
       list_states
        the_data
    #    ending
    end 

    
        def welcome
            puts "Welcome to the COVID-19 Statistics Portal"
            sleep(3)
        end

    def list_states
        puts "Here is a list of the states that our portal has COVID statistics on:"
        sleep(3)
        states = COVID::State.all
        states.each.with_index(1) {|state, index| puts "#{index}) #{state.name}"}
        sleep(3)
        puts ""
       
     end    

     def the_data
        prompts_user
        loop do 
        input = nil
        input = gets.strip.downcase
        case input 
        when "exit"
            break
        when valid_input(input)
            if input.to_i == 0 
                data = COVID::State.all.find{|state| state.name.downcase == input.downcase}
            else 
                data = COVID::State.all[input.to_i - 1]
            
            end 
            puts ""
            puts "#{data.name}"
            puts "Cases: #{data.cases}"
            puts "Deaths: #{data.deaths}"
            puts "Active: #{data.active}"
            puts "Cases per one million: #{data.caseperonemillion}"
            puts "Deaths per one million: #{data.deathsperonemillion}"
            puts "Tests: #{data.tests}"
            puts "" 
            prompts_user
        when "list"
            list_states
            prompts_user
            puts "" 
        else
            puts "" 
            puts "Hmm.. I didn't get that, please try again."
            puts "" 
        end 
    end 
    end 

     def valid_input(input)
        if input.to_i.between?(1, COVID::State.all.length) 
            input
        elsif COVID::State.all.collect {|state| state.name.downcase}.include?(input.downcase)
            input
        else
            false
        end 
        # binding.pry
    end 

    def prompts_user
        puts "Please enter a number corresponding to the state you wish to get more information about, type 'list' to return the list, or type 'exit' to quit"
    end


end
 
