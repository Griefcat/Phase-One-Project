require 'pastel'



def welcome
    pastel = Pastel.new
    puts pastel.green("\n  Buongiorno  ") + (" and ") + pastel.red("  Congratulazioni!  ")
    puts "\n You've decided to take the best trip on Planet Earth --"
    sleep(2)
    puts "\n to the breathtaking"
    sleep(1)
    puts pastel.blue(" \n
    ▄▀█ █▀▄▀█ ▄▀█ █░░ █▀▀ █    █▀▀ █▀█ ▄▀█ █▀ ▀█▀
    █▀█ █░▀░█ █▀█ █▄▄ █▀░ █    █▄▄ █▄█ █▀█ ▄█ ░█░")
    sleep(5)
    
end

def ask_for_budget
 puts "\n One a scale of 1-5 (1 being a cheapskate and 5 being Jeff Bezos), what is your budget?"
 #visitor_budget = gets.chomp
 #return visitor_budget
end
 
def we_took_in_a_budget
    #list_options
    visitor_budget = gets.chomp.to_i
    if visitor_budget.between?(1,5)
        puts "cool"

      #if visitor_budget == "i"
        #puts " "
        # Blank space to show below if user makes valid.
        #elsif visitor_budget != "exit"
            #puts "cool"
        #   i = Integer(input , exception: false)
        #   # Parsed input to raise exception when not false
        #   puts " "
        #elsif visitor_budget.between?(1,5)
            #puts "great"
        #     puts i
        #     # Prints number user entered. 
        #     display_coffee(i-1)
        #     # Count starts at 0 for the computer, 1 for the user.
        #     display_again 
        else 
        #       # Raises argument if input is wrong
            puts " "
            puts "Oops! Per favore, try again."
            puts " " 
        
        #     end
        #   end
        #   input # User prompted to give input.
        # end
      end 
    
end 