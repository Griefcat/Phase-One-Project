class Visitor < ActiveRecord::Base

has_many :trips 
has_many :trip_packages, through: :trips 









end 