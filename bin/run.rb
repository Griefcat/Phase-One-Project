require_relative "../config/environment.rb"
require_relative "../apps/models/excursion_package_joiner.rb"
require_relative "../apps/models/excursion.rb"
require_relative "../apps/models/trip_package.rb"
require_relative "../apps/models/trip.rb"
require_relative "../apps/models/visitor.rb"
require_relative "../apps/models/welcome.rb"

require 'pry'

#clear the terminal

#Welcome vistor
welcome
intro 
intro_answer
#Ask for budget
#intro message: We have a set of Trip Packages containing activities for all budget levels. 
#Would you like us to generate a package based on your budget? Or would you like to see a list of excursions?[budget/list]
#person inputs "budget" - proceeds with asking for budget 
#person inputs "list" - proceeds with presenting a list of excursions 
#ask_for_budget
#User puts in input

#do you want to choose trip by budget or activity

#user puts in activity
#display our list of activities, asks for user to input the activity want
#display trip packages with that activity
#werklwjrkwjaerlakwejrklewjr
# user_input
#we do stuff with that input
#gets_budget
#display_again
#exit_program
# input = gets_budget()
# your_trip = your_trip_display(input)


#my_trip = gets_trip_package

#Output trip package based on budget
#Give option for more info on trip
#Return to trip package home menu