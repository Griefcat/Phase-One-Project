require 'pastel'
require 'pry'
PASTEL = Pastel.new


def welcome
    puts PASTEL.green("\n  Buongiorno  ") + (" and ") + PASTEL.red("  Congratulazioni!  ")
    puts "\n You've decided to take the best trip on Planet Earth --"
    sleep(2)
    puts "\n to the breathtaking"
    sleep(1)
    puts PASTEL.blue(" \n
    ▄▀█ █▀▄▀█ ▄▀█ █░░ █▀▀ █    █▀▀ █▀█ ▄▀█ █▀ ▀█▀
    █▀█ █░▀░█ █▀█ █▄▄ █▀░ █    █▄▄ █▄█ █▀█ ▄█ ░█░")
    sleep(5)
    
end

def ask_for_budget
 puts "\n One a scale of 1-5 (1 being a cheapskate and 5 being Jeff Bezos), what is your budget?"
end

# def user_input
#     @input = gets.chomp.to_i
# end 

def try_again
    gets_budget
 end 
 
def gets_budget
    input = gets.chomp.to_i
    if  input.between?(1,5)
        puts "Grazie! Let's put together your trip for Budget Level #{input}"  
    else
        puts " "
            puts "Oops!" + PASTEL.green(" Per favore") + ", try again."
            puts " " 
            try_again
        end 
end




def exit_program
    puts " "
    puts "Grazie! Ci vediamo!"
    puts " "
    exit

  end

# def gets_budget
#     if user_input.between?(1,5)
#         puts "Grazie! Let's put together your trip for Budget Level #{user_input}."
#         return user_input
#     else 
#         puts "Oops! Try again."
#         try_again
#     end 
# end 

#  def try_again
#     gets_budget
#  end 
            

# def your_trip_display(input)
#     #gets_budget
#      #puts " "
#      #puts "Grazie! Let's put together your trip for Budget Level #{input}"
#      your_trip = TripPackage.find_by(budget: input)
#      return your_trip
#  end 
    
