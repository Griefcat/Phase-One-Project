require 'pastel'
def welcome
    pastel = Pastel.new
    puts pastel.green("\n  Buongiorno  ") + (" and ") + pastel.red("  Congratulazioni!  ")
    puts "\n You've decided to take the best trip on planet earth --"
    sleep(2)
    puts "\n to the breathtaking"
    sleep(1)
    puts pastel.blue(" \n
    ▄▀█ █▀▄▀█ ▄▀█ █░░ █▀▀ █    █▀▀ █▀█ ▄▀█ █▀ ▀█▀
    █▀█ █░▀░█ █▀█ █▄▄ █▀░ █    █▄▄ █▄█ █▀█ ▄█ ░█░")
    sleep(5)
    
end

def budget
 puts "\n One a scale of 1-5 (1 being a cheapskate and 5 being Jeff Bezos), what is your budget?"
 vistor_budget = gets.chomp
 return vistor_budget
end
 