require 'pastel'
require 'pry'
PASTEL = Pastel.new



def welcome
    system("clear")
    puts PASTEL.green("\n  𝘽𝙤𝙣𝙜𝙞𝙤𝙧𝙣𝙤  ") + (" and ") + PASTEL.red("  𝘾𝙤𝙣𝙜𝙧𝙖𝙩𝙪𝙡𝙖𝙯𝙞𝙤𝙣𝙞!  ")
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
        your_trip = TripPackage.find_by(budget: input)
        sleep(7)
        puts "Here are your adventures based on your Budget level!"
        sleep(3)
        print your_trip.excursions.pluck(:name, :description)

        # binding.pry  
    else
        puts " "
            puts "Oops!" + PASTEL.green(" Per favore") + ", try again."
            puts " " 
            try_again
        end 
end

# def display_again 
#     puts "Would you like to see the menu again? [y/n]"
#     answer = gets.strip.downcase

#       if answer == "y"
#         puts "Here you go!"
#         puts " "
#         puts " "
#         welcome
#         ask_for_budget
#         gets_budget

#       elsif answer == "n" || answer == "exit"
#         exit_program
#       else 
#         puts " "
#         puts "Uh-oh! Please try again."
#         puts " "
#     end  
# end


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
    
