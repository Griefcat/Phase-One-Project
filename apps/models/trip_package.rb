class TripPackage < ActiveRecord::Base

    has_many :trips 
    has_many :excursion_package_joiners
    has_many :excursions, through: :excursion_package_joiners
    has_many :visitors, through: :trips 
    











end 