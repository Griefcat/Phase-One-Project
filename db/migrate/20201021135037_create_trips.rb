class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :visitor_id
      t.integer :trip_package_id
      end
  end
end
