class AddBudgetToExcursions < ActiveRecord::Migration[5.2]
  def change
    add_column :excursions, :budget, :integer
  end
end
