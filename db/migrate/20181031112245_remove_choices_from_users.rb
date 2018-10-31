class RemoveChoicesFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :fashion_choice, :string
    remove_column :users, :food_choice, :string
  end
end
