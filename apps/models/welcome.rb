require 'pastel'
def welcome
    pastel = Pastel.new
    puts " "
    puts pastel.green("  Buongiorno  ") + (" and ") + pastel.red("  Congratulazioni!  ")
    puts " "
    puts "You've decided to take the best trip on planet earth --"
    sleep(2)
    puts " "
    puts "to the breathtaking"
    puts " "
    sleep(1)
    puts pastel.blue("
    ▄▀█ █▀▄▀█ ▄▀█ █░░ █▀▀ █    █▀▀ █▀█ ▄▀█ █▀ ▀█▀
    █▀█ █░▀░█ █▀█ █▄▄ █▀░ █    █▄▄ █▄█ █▀█ ▄█ ░█░")
    sleep(5)
    puts " "
end

def budget
 puts "One a scale of 1-5 (1 being a cheapskate and 5 being Jeff Bezos), what is your budget?"
 vistor_budget = gets.chomp
 return vistor_budget
end
 