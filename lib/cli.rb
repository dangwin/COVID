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
        sleep(5)
        states = COVID::State.all
        states.each.with_index(1) {|state, index| puts "#{index}) #{state.name}"}
        sleep(3)

     end    

     def the_data
        puts ""
        puts "Please enter a number corresponding to the state you wish to get more information about, type 'list' to return the list, or type 'exit' to quit"
        input = nil
        input = gets.strip.downcase
        if input == "exit"
            puts "Goodbye and stay safe!"
           exit
        end 
        if input.to_i> 0
        data = COVID::State.find_by_index(input.to_i - 1)
        if data == nil
        puts "Please enter a number between 1 and 62"
        else
        puts ""
        puts "#{data.name}"
        puts "Cases: #{data.cases}"
        puts "Deaths: #{data.deaths}"
        puts "Active: #{data.active}"
        puts "Cases per one million: #{data.caseperonemillion}"
        puts "Deaths per one million: #{data.deathsperonemillion}"
        puts "Tests: #{data.tests}"
        puts ""
        end 
    elsif input == "list"
            list_states
        else
            puts "Hmm.. I didn't get that, please try again."
     end 
    end 


end 