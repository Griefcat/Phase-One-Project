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

def try_again_for_intro
    intro_answer
end 

def intro 
    puts " "
    puts " "
    puts "Here at Va Via KellieAnne we've put together the perfect packages of excursions for you to enjoy on your getaway to Southern Italy's iconic seaside."
    puts " "
    puts " "
    puts "We can generate your trip package based on either your budget or your activity preferences! Please press b to see options based on your budget or l to see our full list of offered excursions! [b/l]"
end 

def intro_answer
        intro_answer = gets.strip.downcase
        if intro_answer == "b"
            ask_for_budget
        elsif intro_answer == "l" 
            list_of_activities
        else
            puts " "
            puts "Oops!" + PASTEL.green(" 𝙋𝙚𝙧 𝙛𝙖𝙫𝙤𝙧𝙚") + ", try again."
            puts " " 
            try_again_for_intro
        end 
end   


def list_of_activities 
    puts " "
    sleep(1)
    excursions = Excursion.all
    puts PASTEL.green(" 𝙈𝙤𝙡𝙩𝙤 𝙗𝙚𝙣𝙚!")+"Here is a list of our activites:"
    excursions.each_with_index do |excursion, index|
    puts "#{index+1}." + "#{excursion.name}"
    end
    puts " "
    puts  "Enter a number 1-7 to learn more about the activity"
    other_input = gets.chomp.to_i
    more_info = excursions.pluck(:name, :description)[other_input-1]
    more_info.map do |element|
        puts element
    end
end

# def display_again 
#     puts "Would you like to see more budget options? [y/n]"
#     answer = gets.strip.downcase

#       if answer == "y"
#         puts "Here you go!"
#         puts " "
#         puts " "
         
#          ask_for_budget
#          gets_budget

#       elsif answer == "n" || answer == "exit"
#         exit_program
#       else 
#         puts " "
#         puts "Uh-oh! Please try again."
#         puts " "
#     end  
# end

def ask_for_budget
 puts "\n One a scale of 1-5 (1 being a cheapskate and 5 being Jeff Bezos), what is your budget?"
 gets_budget
end

# def user_input
#     @input = gets.chomp.to_i
# end 

def try_again_for_budget
    gets_budget
 end 
 
def gets_budget
    input = gets.chomp.to_i
    if  input.between?(1,5)
        puts "Grazie! Let's put together your trip for Budget Level #{input}"
        puts " "
        your_trip = TripPackage.find_by(budget: input)
        sleep(7)
        puts "Here are your adventures based on your Budget level!"
        sleep(3)
        puts " "
        x = your_trip.excursions.pluck(:name, :description)
        x.map do |trips| 
            puts trips
            puts " "
        
        end

        # binding.pry  
    else
        puts " "
            puts "Oops!" + PASTEL.green(" 𝙋𝙚𝙧 𝙛𝙖𝙫𝙤𝙧𝙚") + ", try again."
            puts " " 
            try_again_for_budget
        end 
        display_again
end

def display_again 
    puts "Would you like to see more budget options? [y/n]"
    answer = gets.strip.downcase

      if answer == "y"
        puts "Here you go!"
        puts " "
        puts " "
         
         ask_for_budget
         gets_budget

      elsif answer == "n" || answer == "exit"
        exit_program
      else 
        puts " "
        puts "Uh-oh! Please try again."
        puts " "
    end  
end


def exit_program
    puts " "
    puts PASTEL.green("\n  𝘾 𝙞 𝙖 𝙤!  ") + (" and ") + PASTEL.red("  𝘾 𝙞   𝙫 𝙚 𝙙 𝙞 𝙖 𝙢 𝙤 !!  ")
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
    
