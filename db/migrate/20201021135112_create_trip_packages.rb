class CreateTripPackages < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_packages do |t|
      t.string :name
      t.integer :budget
      t.integer :excursion_id
    end
  end
end
