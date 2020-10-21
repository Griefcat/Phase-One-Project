class Excursion < ActiveRecord::Base

    has_many :excursion_package_joiners
    has_many :trip_packages, through: :excursion_package_joiners





end 