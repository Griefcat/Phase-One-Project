class CreateExcursionPackageJoiner < ActiveRecord::Migration[5.2]
  def change
      create_table :excursion_package_joiners do |t|
        t.integer :excursion_id
        t.integer :trip_package_id
        end
    end
  end
  end
end
