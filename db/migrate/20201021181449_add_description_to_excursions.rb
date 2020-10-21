class AddDescriptionToExcursions < ActiveRecord::Migration[5.2]
  def change
    add_column :excursions, :description, :string
  end
end