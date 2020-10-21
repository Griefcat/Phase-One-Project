class CreateExcursions < ActiveRecord::Migration[5.2]
  def change
    create_table :excursions do |t|
      t.string :name
    end
  end
end
