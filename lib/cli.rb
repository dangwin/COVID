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
        # sleep(3)
        states = COVID::State.all
        states.each.with_index(1) {|state, index| puts "#{index}) #{state.name}"}
     end    

     def the_data
        puts "Please enter a number corresponding to the state you wish to get more information about, type 'list' to return the list, or type 'exit' to quit"
     end 

end