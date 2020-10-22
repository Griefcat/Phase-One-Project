require_relative "../config/environment.rb"
require_relative "../apps/models/excursion_package_joiner.rb"
require_relative "../apps/models/excursion.rb"
require_relative "../apps/models/trip_package.rb"
require_relative "../apps/models/trip.rb"
require_relative "../apps/models/visitor.rb"
require_relative "../apps/models/welcome.rb"

require 'pry'

#clear the terminal
system("clear")
#Welcome vistor
welcome
#Ask for budget
ask_for_budget
#User puts in input
# user_input
#we do stuff with that input
gets_budget
# input = gets_budget()
# your_trip = your_trip_display(input)
exit_program

#my_trip = gets_trip_package

#Output trip package based on budget
#Give option for more info on trip
#Return to trip package home menu